# this file should be placed in root of your react project.
#1) you need to change its mode to be exectuable by writing "chmod +x code_reader.sh"
#2) you can modify paternsToExclude and FilesToExclude by adding files or patterns inside those arrays
#3) you run it by writing ./code_reader.sh inside terminal , it will create organized txt document with your project

dir=$(pwd)


#input patters wich you want to exclude
paternsToExclude=("*.css" "*.txt" "*.sh" "*.json" "*.md")


#input files wich you want to exclude
filesToExclude=("code_reader.sh" "setupTests.js" "package-lock.json" "code_readed.txt" "README.md" "reportWebVitals.js")

if [ ! -f "$dir/code_readed.txt" ]; then
    touch "$dir/code_readed.txt"
fi

text="$dir/code_readed.txt"

>$text

process_file(){
    local filename="$1"
    if [ -f "$filename" ]; then
        for exclude in "${paternsToExclude[@]}"; do
            if [[ "$filename" == $exclude ]]; then
                return 0 
            fi
        done

        for exclude in "${filesToExclude[@]}";
         do
            if echo "$1" | grep -q "\\b$exclude\\b";
            then    
                return 0
            fi
        done
        echo -e "\nFile: $filename" >> "$text"
        cat "$filename" >> "$text"
    fi
}

process_folder(){
    local folder="$1"
    echo -e "\nFolder: $folder" >> "$text"

    for element in "$folder"/*; do
        if [ -f "$element" ]; then
            process_file "$element"
        elif [ -d "$element" ]; then
            process_folder "$element"
        fi 
    done
}

for element in "$dir"/*; do
    if [ "$element" == "$dir/public" ] || [ "$element" == "$dir/node_modules" ] || [ "$element" == "$dir/.gitignore" ]; then
        echo "$element"
    else
        if [ -d "$element" ]; then  
            process_folder "$element"
        elif [ -f "$element" ]; then
            process_file "$element"
        else 
            echo "$element"
        fi
    fi
done

