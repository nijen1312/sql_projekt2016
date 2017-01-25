#!/usr/bin/python3
from random import *
from sys import *
airlinesList=[]
countriesList=[]
with open("files/airlines.txt",mode='r') as airlinesContent:
    for line in airlinesContent:
        airlinesList.append(line.strip())
with open("files/countries_pl.txt",mode='r') as countriesContent:
    for line in countriesContent:
        countriesList.append(line.strip())
airlinesTypes = ["Economy","Business"]
for airline in airlinesList:
    print(airline+','+choice(airlinesTypes)+','+choice(countriesList))
