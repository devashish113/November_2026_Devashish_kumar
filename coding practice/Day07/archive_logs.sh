#!/bin/bash
# Compress and archive system log files
tar -czf /var/log/archived_logs.tar.gz /var/log/*.log
echo "Logs successfully archived to /var/log/archived_logs.tar.gz"
