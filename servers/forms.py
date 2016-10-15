from django import forms

class ServerForm(forms.Form):
    games_data = ("Assassin's Creed® Unity",'Call of Duty®: Black Ops III','Counter-Strike 1.6','Battlefield 4','DOTA 2','Dragon Age: Inquisition','Half-Life 2','League of Legends','Medal of Honor',"Mirror's Edge",'Need for Speed: Rivals')
    locations_data = ('Argentina','Australia','Austria','Belgium','Brazil','Czech Republic','Denmark','Egypt','France','Hong Kong','India','Italy','Japan','Malaysia','Mexico','Morocco','Netherland','New Zealand','Norway','Poland','Russia','Saudi Arabia','Singapore','UK','USA')

    LOCATIONS = [("("+"'"+x+"'"+")",x) for x in locations_data]
    LOCATIONS.insert(0,('(select location from servers_Server)','All'))
    GAMES = [("("+"'"+x+"'"+")",x) for x in games_data]
    GAMES.insert(0,('(select game from servers_Server)','All'))

    name = forms.CharField(label='Server Name',max_length=100, required=False,widget=forms.TextInput(attrs={'placeholder': 'Regex'}))
    game = forms.ChoiceField(label='Game',choices=GAMES)
    location = forms.ChoiceField(label='Location',choices=LOCATIONS)
    IP = forms.CharField(label='IP',max_length=30, required=False, widget=forms.TextInput(attrs={'placeholder': 'IP:port'}))




class AddServerForm(forms.Form):
    games_data = ("Assassin's Creed® Unity",'Call of Duty®: Black Ops III','Counter-Strike 1.6','Battlefield 4','DOTA 2','Dragon Age: Inquisition','Half-Life 2','League of Legends','Medal of Honor',"Mirror's Edge",'Need for Speed: Rivals')
    locations_data = ('Argentina','Australia','Austria','Belgium','Brazil','Czech Republic','Denmark','Egypt','France','Hong Kong','India','Italy','Japan','Malaysia','Mexico','Morocco','Netherland','New Zealand','Norway','Poland','Russia','Saudi Arabia','Singapore','UK','USA')
    LOCATIONS = [(x,x) for x in locations_data]
    GAMES = [(x,x) for x in games_data]

    name = forms.CharField(label='Server Name',max_length=100)
    game = forms.ChoiceField(label='Game',choices=GAMES)
    players_online = forms.ChoiceField(label='Average # of Players Online',choices=tuple((x,x) for x in range(0,33)))
    location = forms.ChoiceField(label='Location',choices=LOCATIONS)
    IP = forms.CharField(label='IP',max_length=30, widget=forms.TextInput(attrs={'placeholder': 'IP:port'}))
    map = forms.CharField(label='Map',max_length=20)
    online = forms.ChoiceField(label='Is online?',choices=((True,'True'),(False,'False')))
