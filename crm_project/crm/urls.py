from django.urls import path
from . import views

urlpatterns = [
    path('crm/', views.crm, name='crm'),
]