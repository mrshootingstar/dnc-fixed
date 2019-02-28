import logging

from rest_framework import serializers
from events.models import Events, RSVP
from rest_framework import serializers
from django.contrib.auth import get_user_model # If used custom user model

User = get_user_model()
logger = logging.getLogger(__name__)


class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(
        write_only=True,
        required=True,
        help_text='Leave empty if no change needed',
        style={'input_type': 'password', 'placeholder': 'Password'}
    )

    def create(self, validated_data):
        logger.info("Creating a new user.")        
        user = User.objects.create(
            username=validated_data['username']
        )
        user.set_password(validated_data['password'])
        user.save()

        return user

    class Meta:
        model = User
        # Tuple of serialized model fields (see link [2])
        fields = ( "id", "username", "password")

class RSVPSerializer(serializers.HyperlinkedModelSerializer):
    id = serializers.ReadOnlyField(source='user.id')
    name = serializers.ReadOnlyField(source='user.name')

    class Meta:
        model = RSVP
        fields = ('id', 'name', 'answer', )

class EventsSerializer(serializers.ModelSerializer):
    users = RSVPSerializer(source='rsvp_set', many=True)
    rsvped = serializers.SerializerMethodField(method_name='calculate_rsvped')
    
    def calculate_rsvped(self, instance):
        request = self.context.get('request')
        user = request.user
        if  user.is_authenticated:
            try:
                rsvp = RSVP.objects.get(user=user, event=instance)
                return rsvp.answer
            except:
                pass
        return ''

    class Meta:
        model = Events
        fields = '__all__'
        extra_kwargs = {
            'id': {'read_only': True},
            'status': {'read_only': True},
            'start_date': {'read_only': True},
            'end_date': {'read_only': True},
            'description': {'read_only': True},
            'official': {'read_only': True},
            'visibility': {'read_only': True},
            'guests_can_invite_others': {'read_only': True},
            'modified_date': {'read_only': True},
            'created_date': {'read_only': True},
            'participant_count': {'read_only': True},
            'reason_for_private': {'read_only': True},
            'order_email_template': {'read_only': True},
            'name': {'read_only': True},
        }