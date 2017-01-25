#!/usr/bin/pyhton3

from random import choices, randrange
from sys import argv
import string
idList=[]
with open("passengers.csv",mode='r') as wordFile:
    for line in wordFile:
        idList.append(line.split(',')[0].strip())
for i in range(0,argv[1]):
    pre=choices(string.ascii_uppercase,k=3)
    post=choices(string.digits,k=3)
    flightID=pre+'-'+post
    assignedIDs=choices(idList,k=randrange(start=20,stop=100))
    for element in assignedIDs:
        print(flightID+','+element)
