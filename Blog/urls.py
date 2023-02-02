from django.urls import path
from .views import publicaciones, publicacion_id

app_name = 'blog'

urlpatterns = [
    path('', publicaciones, name='publicaciones'),
    path('<int:publicacion_id>', publicacion_id, name='publicacion_id'),
]