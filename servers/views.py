from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect, HttpResponse
from django.urls import reverse
from django.views import generic

from .models import Server
from .forms import ServerForm, AddServerForm

"""
class IndexView(generic.ListView):
    template_name = 'polls/index.html'
    context_object_name = 'latest_question_list'

    def get_queryset(self):
        return Question.objects.order_by('-pub_date')[:5]


class DetailView(generic.DetailView):
    model = Question
    template_name = 'polls/detail.html'


def vote(request, question_id):
    question = get_object_or_404(Question, pk=question_id)
    try:
        selected_choice = question.choice_set.get(pk=request.POST['choice'])
    except (KeyError, Choice.DoesNotExist):
        # Redisplay the question voting form.
        return render(request, 'polls/detail.html', {
            'question': question,
            'error_message': "You didn't select a choice.",
        })
    else:
        selected_choice.votes += 1
        selected_choice.save()
        # Always return an HttpResponseRedirect after successfully dealing
        # with POST data. This prevents data from being posted twice if a
        # user hits the Back button.
        return HttpResponseRedirect(reverse('polls:results', args=(question.id,)))

"""

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

            S=Server.objects.raw("select * from servers_Server where name like %s and game in {0} and location in {1} and IP like %s".format(game,location),[name,IP] )
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
        return HttpResponse('<h1>Server added to the database :)</h1>' )

    # if a GET (or any other method) we'll create a blank form
    else:
        form = AddServerForm()

    return HttpResponse('<h1>Error!</h1>' )
