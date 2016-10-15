from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse
from django.views import generic

from .models import Server
from .forms import ServerForm, AddServerForm


def homepage(request):
    return render(request, 'servers/homepage.html')



def initial_query(request):
    form = ServerForm()
    context = {'form': form}
    return render(request, 'servers/query.html', context)


def thanks(request):
    return HttpResponse('<h1>Thank you! :)</h1>' )



def get_servers(request):
    # if this is a POST request we need to process the form data
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = ServerForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            # processs the data in form.cleaned_data as required
            name = form.cleaned_data['name']
            game = form.cleaned_data['game']
            location = form.cleaned_data['location']
            IP = form.cleaned_data['IP']


            name = '%' + name + '%'
            IP = '%' + IP + '%'

            S=Server.objects.raw("select * from servers_Server where name like %s and game in {0} and location in {1} and IP like %s order by rank".format(game,location),[name,IP] )
            # rdirect to a new URL:
            return render(request, 'servers/retrieve.html', {'server_list': S})

    # if a GET (or any other method) we'll create a blank form
    else:
        form = ServerForm()

    return render(request, 'servers/query.html', {'form': form})


def initial_add(request):
    form = AddServerForm()
    context = {'form': form}
    return render(request, 'servers/add.html', context)


def add_servers(request):
    if request.method == 'POST':
        form = AddServerForm(request.POST)
        if form.is_valid():
            name = form.cleaned_data['name']
            game = form.cleaned_data['game']
            players_online = form.cleaned_data['players_online']
            location = form.cleaned_data['location']
            IP = form.cleaned_data['IP']
            map = form.cleaned_data['map']
            online =  form.cleaned_data['online']

            s = Server(name=name,game=game,rank=-1,players_online=players_online,location=location,IP=IP,map=map,isAlive=online)
            s.save()
        else:
            S=Server.objects.filter(game=game,location=location)
            # redirect to a new URL:
        return render(request, 'servers/success.html')

    # if a GET (or any other method) we'll create a blank form
    else:
        form = AddServerForm()

    return HttpResponse('<h1>Error from function add_servers</h1>' )
