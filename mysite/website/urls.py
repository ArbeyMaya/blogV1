from django.urls import path
from . import views

app_name = 'website'

urlpatterns = [
    path('', views.landing_page, name='index'),
    path('', views.landing_page, name='landing_page'),
]
