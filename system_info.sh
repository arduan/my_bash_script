#!/bin/bash
log_file="log_filesystem_health.log"

echo "System Health Check $(date)" >> "$log_file"
echo "----------------------------------" >> "$log_file"

# Check memory usage
free -h >> "$log_file"

# Check CPU usage
top -n 1 -b >> "$log_file"

# Check disk usage
df -h >> "$log_file"

# Check network interfaces
ip a >> "$log_file"

echo "System health check completed. Results are logged in $log_file"
