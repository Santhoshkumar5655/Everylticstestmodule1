#!/bin/bash


for folder in /home/*; do
    if [ -d "$folder" ]; then
        
        du -sh "$folder"
    fi
done

check_system_info() {
    echo "System Information:"
   
    echo "CPU Utilization:"
    top -bn 1 | grep '%Cpu' | awk '{print "User: " $2 "%, System: " $4 "%, Idle: " $8 "%"}'
    echo "RAM Usage:"
    free -h | grep 'Mem:' | awk '{print "Total: " $2 ", Used: " $3 ", Free: " $4}'
    echo "Number of CPU Cores:"
    nproc
}

check_system_info
  