from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from .models import Place


def index(request):
    return render('places/index.html')

def visited(request):
    visited = Place.objects.filter(visited=True)
    return render('places/visited.html', {'visited':visited})

def wished(request):
    wished = Place.objects.filter(wished=False)
    return render('places/wished.html', {'wished': wished})
