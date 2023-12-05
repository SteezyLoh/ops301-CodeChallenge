# Author:     Scotty Jokon
# Script:     Ops 301 Ops Chall 06
# Purpose:    Print "Who am I", "IP-A","lSHW -Short"
# Resources:  https://chat.openai.com/share/e9dd111b-cdca-4a19-a04d-9b774e766a48, https://docs.python.org/3/library/subprocess.html#module-subprocess





# Variables

Message = 'Who AM I'
user = 'Scotty'

# Input

print(Message)
user = input('Please Enter Name to continue: ')
print(user)

# Output

print('There is going to be a user name printed below: ' + user)
print(user)

# Imports

import subprocess

subprocess.run(['ip', 'a'])
subprocess.run(['lshw', '-short'], capture_output=True, text=True)



# Functions

def my_function():
    subprocess.run(['ip', 'a'])
    subprocess.run(['lshw', '-short'], capture_output=True, text=True) 


# Stretch, If statement 