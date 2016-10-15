from django.contrib import admin
from random import randint
from .models import Server



def players_shuffle(modeladmin, request, queryset):
    for x in queryset:
        x.players_online = randint(0,33)
        x.rank = randint(0,100)
        x.save()
players_shuffle.short_description = "TimeLapse"


class TimeLapse(admin.ModelAdmin):
    list_display = ['name', 'rank', 'players_online','isAlive']
    ordering = ['name']
    actions = [players_shuffle]

admin.site.register(Server,TimeLapse)
