#!/usr/bin/python3

from random import choice, randint
from sys import argv

connectionDict={}
airportList=[]

with open("files/airlines.txt",mode='r') as wordFile:
    for line in wordFile:
        connectionDict[line.strip()]=[]
with open("airports.csv",mode='r') as wordFile:
    for line in wordFile:
        airportList.append(line.split(',')[0].strip())

counter=0

while counter < int(argv[1]):
    airline=choice(list(connectionDict.keys()))
    airport=choice(airportList)
    if airport not in connectionDict[airline]:
        connectionDict[airline].append(airport)
        counter+=1
for key in connectionDict:
    if connectionDict[key]:
        for airport in connectionDict[key]:
            number=str(randint(0,999))
            print(key[:2]+'-'+'0'*(3-len(number))+number+','+key+','+airport)
