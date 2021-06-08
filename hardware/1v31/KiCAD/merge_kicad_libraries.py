#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  2 13:24:32 2019

@author: brankob
"""

import csv
from sets import Set

filename1 = "LimeMicroBGD_Library1.lib"    # source library #1
filename2 = "LimeMicroBGD_Library2.lib"    # source library #2
outputfile = "LimeMicroBGD_Library3.lib"   # merged library

print "Starting...\n"

csvfile1 = open(filename1, 'r')
csvreader1 = csv.reader(csvfile1)
csvfile2 = open(filename2, 'r')
csvreader2 = csv.reader(csvfile2)

elementList = []
elementNames = Set([])

flagElementEnd = 1
flagBeginning = 1
elementNameCounter = 0
tempElement = ""
for row1 in csvreader1:
    temp = row1[0]
    
    # adding THE BEGINNING SECTION 
    if temp != "#" and flagBeginning == 1:
        tempElement = tempElement + temp + "\n"
    elif flagBeginning == 1:
        elementList.append(tempElement[0:-1]) #deliting "\n"
        tempElement = ""
        flagBeginning = 0
    
    # adding elements
    if temp == "#" or flagElementEnd == 0:
        elementNameCounter += 1 
        flagElementEnd = 0                
        
        if temp != "ENDDEF":
            tempElement = tempElement + temp + "\n"
            if elementNameCounter == 2:
                elementNames.add(temp)
        else:
            tempElement = tempElement + temp
            elementList.append(tempElement)  
            tempElement = ""
            flagElementEnd = 1
            elementNameCounter = 0
csvfile1.close()
print "Library #1 has total ", len(elementNames), " elements"
         
flagElementEnd = 1
elementNameCounter = 0
tempElement = ""
for row2 in csvreader2:
    temp = row2[0]
    
    if temp == "#" or flagElementEnd == 0:
        elementNameCounter += 1 
        flagElementEnd = 0                
        
        if temp != "ENDDEF":
            tempElement = tempElement + temp + "\n"
            if elementNameCounter == 2:
                tempElementName = temp
        else:
            tempElement = tempElement + temp
            if tempElementName in elementNames:
                tempElement = ""
                flagElementEnd = 1
                elementNameCounter = 0
            else:
                elementList.append(tempElement)  
                elementNames.add(tempElementName)
                print "Element has been added in the library:\t", tempElementName
                tempElement = ""
                flagElementEnd = 1
                elementNameCounter = 0
csvfile2.close()
print "Output library has total ", len(elementNames), " elements"    
    
# Writing into a file
outFile = open(outputfile, 'w')
for elem in elementList:
    outFile.write(elem)

# Writing THE END SECTION of the library 
outFile.write("\n#\n")    
outFile.write("#End Library\n")
              
outFile.close()
             


print "Finished."

    


    
    