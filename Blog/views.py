from django.shortcuts import render, get_object_or_404
from .models import Publicacion

# Create your views here.
def publicaciones(request):
    publicaciones = Publicacion.objects.all()
    return render(request, 'publicaciones.html', {'publicaciones': publicaciones})

def publicacion_id(request, publicacion_id):
    publicacion_id = get_object_or_404(Publicacion, pk=publicacion_id)
    return render(request, 'publicacion_id.html', {'publicacion_id': publicacion_id})