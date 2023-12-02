
#!/bin/bash

# Set the backup directory
backup_dir="/var/log/backups"

# Ensure the backup directory exists
mkdir -p "$backup_dir"

# Function to print file size
print_file_size() {
    echo "File size of $1: $(du -h "$1" | cut -f1)"
}

# Print original file sizes
print_file_size "/var/log/syslog"
print_file_size "/var/log/wtmp"

# Compress log files with timestamp 
timestamp=$(date +"%Y%m%d%H%M%S")
gzip -c /var/log/syslog > "$backup_dir/syslog-$timestamp.gz"
gzip -c /var/log/wtmp > "$backup_dir/wtmp-$timestamp.gz"

# Clear the contents of the log files
cat /dev/null > /var/log/syslog
cat /dev/null > /var/log/wtmp

# Print compressed file sizes
print_file_size "$backup_dir/syslog-$timestamp.gz"
print_file_size "$backup_dir/wtmp-$timestamp.gz"

# Compare file sizes
original_size_syslog=$(du -b /var/log/syslog | cut -f1)
original_size_wtmp=$(du -b /var/log/wtmp | cut -f1)
compressed_size_syslog=$(du -b "$backup_dir/syslog-$timestamp.gz" | cut -f1)
compressed_size_wtmp=$(du -b "$backup_dir/wtmp-$timestamp.gz" | cut -f1)

echo "Original syslog size: $original_size_syslog bytes"
echo "Compressed syslog size: $compressed_size_syslog bytes"

echo "Original wtmp size: $original_size_wtmp bytes"
echo "Compressed wtmp size: $compressed_size_wtmp bytes"







#!/bin/bash

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
gzip -c /var/log/wtmp > "$backup_dir/wtmp-$timestamp.zip"

# Clear the contents of the log files
truncate -s 0 /var/log/syslog
truncate -s 0 /var/log/wtmp

# Print the file size after compression
echo "Compressed File Sizes:"
echo "syslog: $(du -h "$backup_dir/syslog-$timestamp.zip" | cut -f1)"
echo "wtmp: $(du -h "$backup_dir/wtmp-$timestamp.zip" | cut -f1)"
echo "-----------"

