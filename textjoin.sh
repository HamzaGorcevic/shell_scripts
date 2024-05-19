#!/bin/bash

#read -p "Enter destination fajl: " destName
#
#while [ -f "$name" ]; do
#    read -p "Enter file name (or press Enter to stop): " name
#    cat "$name" >> "$destName"
#done
#
#

echo $(ls "/home/hamza")


for element in "/home/hamza"/*; do
    if [[ "$element" == *.sh ]];
     then
        echo "Moved"
        mv "$element" "/home/hamza/shell_scripts"
    fi
done
        
