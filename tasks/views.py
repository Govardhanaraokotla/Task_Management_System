# tasks/views.py
from rest_framework import viewsets, filters
from .models import Task
from .serializer import TaskSerializer
from django_filters.rest_framework import DjangoFilterBackend

class TaskViewSet(viewsets.ModelViewSet):
    queryset = Task.objects.all().order_by('date')
    serializer_class = TaskSerializer
    filter_backends = [filters.SearchFilter, DjangoFilterBackend]
    search_fields = ['title']
    filterset_fields = ['date']
