echo $(ls "/home/hamza")


for element in "/home/hamza"/*; do
    if [[ "$element" == *.sh ]];
     then
        echo "Moved"
        mv "$element" "/home/hamza/shell_scripts"
    fi
done
        
