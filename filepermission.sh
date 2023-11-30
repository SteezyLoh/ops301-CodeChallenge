#!/bin/bash
# Script Name:                  Filepermission.sh
# Author:                       scotty Jokon
# Date of latest revision:      11/29/2023
# Purpose:                      Change permission for files in directory
# Source                        https://chat.openai.com/share/0955b49a-841e-42b6-b77f-568c3c18afdd



# Function to change permission
Changne_permissions() {
    directory="$1"
    permissions"$9"
}

# Prompt user for input directory path
read -p "Enter the directory path: " directory

# Prompt user for input permissions number
read -p "Enter the permissions number (e.g., 777): " permissions

# Change permissions of all files in the directory
chmod -R "$permissions" *
