from django import forms

class ServerForm(forms.Form):
    name = forms.CharField(label='Server Name',max_length=100, required=False,widget=forms.TextInput(attrs={'placeholder': 'Regex'}))

    GAMES = (('(select game from servers_Server)','All'),("('Counter-Strike 1.6')", 'Counter-Strike 1.6'),("('Call of Duty®: Black Ops III')", 'Call of Duty®: Black Ops III'),)
    game = forms.ChoiceField(label='Game',choices=GAMES)

    LOCATIONS = (('(select location from servers_Server)','All'),("('India')", 'India'),("('USA')", 'USA'),)
    location = forms.ChoiceField(label='Location',choices=LOCATIONS)

    IP = forms.CharField(label='IP',max_length=30, required=False, widget=forms.TextInput(attrs={'placeholder': 'IP:port'}))


class AddServerForm(forms.Form):
    name = forms.CharField(label='Server Name',max_length=100)

    GAMES = (('Counter-Strike 1.6', 'Counter-Strike 1.6'),('Call of Duty®: Black Ops III', 'Call of Duty®: Black Ops III'),)
    game = forms.ChoiceField(label='Game',choices=GAMES)

    players_online = forms.ChoiceField(label='Average # of Players Online',choices=tuple((x,x) for x in range(0,33)))

    LOCATIONS = (('India', 'India'),('USA', 'USA'),)
    location = forms.ChoiceField(label='Location',choices=LOCATIONS)

    IP = forms.CharField(label='IP',max_length=30, widget=forms.TextInput(attrs={'placeholder': 'IP:port'}))

    map = forms.CharField(label='Map',max_length=20)

    online = forms.ChoiceField(label='Is online?',choices=((True,'True'),(False,'False')))
