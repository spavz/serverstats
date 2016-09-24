from django.conf.urls import url

from .views import *

app_name = 'servers'
"""urlpatterns = [
    url(r'^$', IndexView.as_view(), name='index'),
    url(r'^(?P<pk>[0-9]+)/$', DetailView.as_view(), name='detail'),
    url(r'^(?P<pk>[0-9]+)/results/$', ResultsView.as_view(), name='results'),
    url(r'^(?P<question_id>[0-9]+)/vote/$', vote, name='vote'),
    url(r'^(?P<question_id>[0-9]+)/enter/$', initial_form, name='question'),
    url(r'^success/$', get_question, name='success'),
    url(r'^thanks/$', thanks, name='thanks'),
]
"""
urlpatterns = [
    url(r'^query/$', initial_query, name='query'),
    url(r'^success/$', get_question, name='success'),
    url(r'^thanks/$', thanks, name='thanks'),
]
