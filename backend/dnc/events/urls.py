from django.contrib import admin
from django.urls import path
from . import views
from rest_framework import routers

router = routers.SimpleRouter()
router.register(r'api/events', views.EventViewSet)
router.register(r'api/rsvp', views.RSVPViewSet)
router.register(r'api/user', views.UserViewSet)

from rest_framework_simplejwt import views as jwt_views

urlpatterns = [
    path('', views.index, name='homepage'),
    path('api/register/', views.CreateUserView.as_view(), name='register'),
    path('api/token/', jwt_views.TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', jwt_views.TokenRefreshView.as_view(), name='token_refresh'),
] +  router.urls


# curl 'http://localhost:8000/api/register' -H 'Content-Type: multipart/form-data; -d '{"username":"roott","password":"pass"}'