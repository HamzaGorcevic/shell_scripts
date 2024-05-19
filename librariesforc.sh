#!/bin/bash

echo "Unesite biblioteke koje želite uneti pored biblioteka stdio.h i stdlib.h:"
read biblioteke
echo "Unete biblioteke su: $biblioteke"

IFS=' ' read -r -a array <<< "$biblioteke"
newLib=""
for element in "${array[@]}"; do
    newLib+="#include <$element.h>\n"
    
done
 echo -e "$newLib"

 echo "Unestie c fajl u kome zelite smestiti ove biblioteke"
 read cFile
    

 temp_file=$(mktemp)

 if test -f "$cFile" && [[ "$cFile" == *.c ]]
 then
    printf "%b" $newLib > $temp_file
    cat $cFile >> $temp_file
    mv "$temp_file" "$cFile"
    cat "$cFile"
else
    echo "Fajl ne postoji"
fi
    
      
     

