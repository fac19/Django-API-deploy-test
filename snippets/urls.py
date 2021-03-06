from django.urls import path
from snippets.views import snippet_list, snippet_detail

urlpatterns = [
    path('snippets', snippet_list),
    path('snippets/<int:pk>', snippet_detail) # <int:pk> is like params in node
]