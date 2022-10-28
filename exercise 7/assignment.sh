#!/bin/bash

TIME=$(date +%H%M)
Email="anthonyaviomoh@gmail.com"

# Create file function
Createfile() {
        touch free.log
        echo "The memory space of the Day at the time $(date +%H:%M)" >> free.log
        free -h >> free.log
}


function Runlog()
        if [[ $TIME == 0005 ]]; then
                if test -f free.log; then
                        echo "The Attached file contains the Ram Log of the system for each hour of the day" | mail -s "Hourly Ram Log" -A /home/vagrant/free.log $Email
                        rm -rf free.log
                else
                        Createfile
                fi
        else
                Createfile
        fi
        
