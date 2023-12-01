#!/bin/bash


# Script Name:                  Appending.sh
# Author:                       scotty Jokon
# Date of latest revision:      11/28/2023
# Purpose:                      Copies /var/log/syslog to the current working directory
#                               Appends the current date and time to the filename
# Source                        https://chat.openai.com/share/cb2eb879-1fb9-469d-92aa-e4d8abeb62dc




# Set the source and destination file paths
source_path="/var/log/syslog"
destination_path= "./syslog_$(date '+%Y%m%d_%H%M%S').log"


# Copy the syslog file to the current working directory
cp "$source_path" "$destination_path"
# Echo system log to destination path
echo "Syslog copied to: $destination_path"