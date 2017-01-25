#!/usr/bin/python3

import sys
from random import *

planeDictionary = {}
with open("files/planes2.txt",mode="r") as planesFile:
	for line in planesFile:
		if line[0]=='@':
			manufacturer=line[1:].strip()
			planeDictionary[manufacturer]=[]
		elif line[0]=='%':
			model=line[1:].strip()
			planeDictionary[manufacturer].append(model)
for i in range(0,int(sys.argv[1])):
	manufacturer=choice(list(planeDictionary.keys()))
	planeModel=choice(planeDictionary[manufacturer])
	serialNumber=str(randint(0,9999))
	serialNo=manufacturer[:2]+'-'+'0'*(4-len(serialNumber))+serialNumber
	maxPassangers=str(randrange(30,150,10))
	maxRange=str(randrange(850,4000,250))
	miles=str(randrange(5000000,60000000,1250000))
	print(serialNo+','+manufacturer+','+planeModel+','+maxPassangers+','+maxRange+','+miles)
