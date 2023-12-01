#!/bin/bash


# Script Name:                  Conditional In Menu System
# Author:                       Scotty Jokon
# Date of latest revision:      11/30/2023
# Purpose:                      Create a bash script that launches a menu system                       
# Source                       Eva Campos 


while true; do
  echo "Menu:"
  PS3="Enter your choice (1-4): "
  options=("Hello world" "Ping self" "IP info" "Exit")
  select opt in "${options[@]}"; do
    case $REPLY in
      1)
        echo "Hello world!"
        
        ;;
      2)
    
      ping -c  4 192.168.0.165
       
        ;;
      3)
        echo "Its Classified"

        ;;
      4)
        echo "BYE B***h"
        exit 0

        ;;
    esac
  done
  
done