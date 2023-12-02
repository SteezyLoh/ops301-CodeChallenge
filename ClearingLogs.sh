#!/bin/bash
# Script Name:                  Conditional In Menu System
# Author:                       Scotty Jokon
# Date of latest revision:      12/1/2023
# Purpose:                      Create a bash script that launches a menu system                       
# Source                        https://chat.openai.com/share/383efdeb-65bf-403a-8730-31a24731858f







# Set the backup directory
backup_dir="/var/log/backups"

# Print the file size before compression
echo "Original File Sizes:"
echo "syslog: $(du -h /var/log/syslog | cut -f1)"
echo "wtmp: $(du -h /var/log/wtmp | cut -f1)"
echo "-----------"

# Compress the log files with timestamped filenames
timestamp=$(date +"%Y%m%d%H%M%S")
gzip -c /var/log/syslog > "$backup_dir/syslog-$timestamp.zip"


# Clear the contents of the log files
truncate -s 0 /var/log/syslog


# Print the file size after compression
echo "Compressed File Sizes:"
echo "syslog: $(du -h "$backup_dir/syslog-$timestamp.zip" | cut -f1)"
echo "wtmp: $(du -h "$backup_dir/wtmp-$timestamp.zip" | cut -f1)"