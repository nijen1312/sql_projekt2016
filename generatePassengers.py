from randomDate import *
import sys


# print(sys.argv)
# print(randomDate(sys.argv[2],sys.argv[3],random.random()))

def readIntoDict(dictionary,key,filename):
    "reads lines of file into dictionary"
    with open(filename,mode='r') as wordFile:
        dictionary[key] = []
        for line in wordFile:
            dictionary[key].append(line.strip())
			
delimiter=','
dataDict = {}
readIntoDict(dataDict,"COUNTRY","countries_pl.txt")
readIntoDict(dataDict,"MALE_NAMES","male_names.txt")
readIntoDict(dataDict,"MALE_SURNAMES","male_surnames.txt")
readIntoDict(dataDict,"FEMALE_SURNAMES","female_surnames.txt")
readIntoDict(dataDict,"FEMALE_NAMES","female_names.txt")
with open("passengers.csv",mode='w') as passengersFile:
    for i in range(0,int(sys.argv[1])):
        if i % 2 == 0:
            key_prefix = "FEMALE"
        else:
            key_prefix = "MALE"
    
		
		#out = str(i)
		
        out += delimiter + dataDict[key_prefix+'_NAMES'][random.randrange(len(dataDict[key_prefix+'_NAMES']))]
        out += delimiter + dataDict[key_prefix+'_SURNAMES'][random.randrange(len(dataDict[key_prefix+'_SURNAMES']))]
        out += delimiter + dataDict['COUNTRY'][random.randrange(len(dataDict['COUNTRY']))]
        out += delimiter + randomDate(sys.argv[2],sys.argv[3],random.random())
        passengersFile.write(out+'\n')

# print (dataDict)
