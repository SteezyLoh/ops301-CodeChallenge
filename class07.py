#!/usr/bin/env python3

# Import libraries

import os

# Declaration of variables
user_path = input('Enter file path: ')
### Read user input here into a variable

# Declaration of functions
def process_directory(user_path):
    for (root, dirs, files) in os.walk("user_path"):
        ### Add a print command here to print ==root==
        print('Root:', root)
        ### Add a print command here to print ==dirs==
        print('dirs:', dirs)
        ### Add a print command here to print ==files==
        print('files:', files)

# Main
process_directory(user_path)

### Pass the variable into the function here

# End

# Resources: https://chat.openai.com/share/e738cc10-3a14-4f60-b39f-3a60a534bd43