from django.db import models

# Create your models here.




class Server(models.Model):
    name = models.CharField(max_length=100)
    game = models.CharField(max_length=20)
    rank = models.IntegerField()
    players_online = models.IntegerField()
    location = models.CharField(max_length=20)
    IP = models.CharField(max_length=20)
    map = models.CharField(max_length=20)
    isAlive = models.BooleanField(default=True)

    def __str__(self):
        return self.name
