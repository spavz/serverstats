from django import forms

class ServerForm(forms.Form):
    name = forms.CharField(label='Server Name',max_length=100)
    games = ['CS 1.6', 'CS:GO', 'COD']
    players_online = forms.IntegerField()
    location = ['India', 'USA', 'Russia']
    IP = forms.CharField(max_length=30)
    map = ['de_dust2','de_inferno','gg_crazy']
    isAlive = forms.BooleanField()
