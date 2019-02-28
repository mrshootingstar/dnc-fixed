import logging

from django.shortcuts import render
from django.contrib.auth import get_user_model
from rest_framework import viewsets
from events.serializers import (
    EventsSerializer, 
    RSVPSerializer, 
    UserSerializer
)
from events.models import Events, RSVP
from rest_framework.decorators import api_view, renderer_classes, action
from rest_framework.renderers import StaticHTMLRenderer
from rest_framework.response import Response

from rest_framework import permissions
from rest_framework.generics import CreateAPIView

from .pagination import StandardResultsSetPagination

logger = logging.getLogger(__name__)

# For the kick of it we are using DRF statichtmlrenderer instead of having a Django native view.
@api_view(('GET',))
@renderer_classes((StaticHTMLRenderer,))
def index(request):
    data = render(request, 'events/index.html')
    return Response(data)

User = get_user_model()

class UserViewSet(viewsets.ModelViewSet):
    """
    A viewset for viewing and editing User instances.
    """
    serializer_class = UserSerializer
    queryset = User.objects.all()


class RSVPViewSet(viewsets.ModelViewSet):
    """
    A viewset for viewing and editing RSVP instances.
    """
    serializer_class = RSVPSerializer
    queryset = RSVP.objects.all()
    
    

class EventViewSet(viewsets.ModelViewSet):
    """
    A viewset for viewing and editing event instances.
    """
    serializer_class = EventsSerializer
    queryset = Events.objects.all()
    pagination_class = StandardResultsSetPagination

    def get_permissions(self):
        """
        Instantiates and returns the list of permissions that this view requires.
        """
        if self.action == 'rsvp':
            permission_classes = [permissions.IsAuthenticated]
        else:
            permission_classes = [permissions.AllowAny]
        return [permission() for permission in permission_classes]


    @action(detail=True, methods=['post'])
    def rsvp(self, request, pk=None):
        '''
        End point to RSVP to events. 
        '''
        # TODO: add permission
        user = request.user
        
        event = self.get_object()
        answer = request.data.get("answer")
        logger.info("User: {} Event: {} Answer {}".format(user, event, answer))
        
        rsvp, created = RSVP.objects.get_or_create(
            event=event,
            user=user,
            defaults={'answer': answer},
        )

        if created:
            message = 'RSVP created'
        
        else:
        # person just refers to the existing one
            rsvp.answer = answer
            rsvp.save()
            message = 'RSVP updated'
        serializer = self.get_serializer(event, many=False)
        return Response({
            'status': message,  
            'event': serializer.data
        })


class CreateUserView(CreateAPIView):
    model = get_user_model()
    permission_classes = [
        permissions.AllowAny # Or anon users can't register
    ]
    serializer_class = UserSerializer
