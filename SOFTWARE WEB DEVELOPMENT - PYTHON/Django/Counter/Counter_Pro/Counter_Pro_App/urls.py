from django.urls import path
from . import views
urlpatterns = [
    path('', views.index),
    # path('', views.index, name="index"),
    path('destroy_session', views.destroy),
    path('newCounter', views.root),
    path('custom', views.custom),

]
