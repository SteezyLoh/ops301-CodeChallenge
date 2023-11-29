#!/bin/bash

# Set the source and destination file paths
source_path="/var/log/syslog"
destination_path="./syslog_$(date '+%Y%m%d_%H%M%S').log"

# Copy the syslog file to the current working directory
cp "$source_path" "$destination_path"

# Print a message indicating the completion of the operation
echo "Syslog copied to: $destination_path"
