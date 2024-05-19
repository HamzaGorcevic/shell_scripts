#
#Napisati script datoteku koja se poziva sa
#merge dir type outfile
#kojom se sve datoteke sa ekstenzijom (tipom) type na adresaru dir
#spajaju i zapisuju u datoteku outfile. Datoteke čiji su sadržaji upisani u
#outfile datoteci treba obrisati a ostale prebaciti na $HOME adresar.

if [ -d $1  ];
    echo $(ls $1)
    then
    
    for element in "$1"/*;
    do
        if [[ $element == *."$2" ]];
        then
            cat "$element" >> "$3"
            echo succesfully added $element into $3
        fi
    done
fi 
