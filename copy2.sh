

func_copy () {
    while [ $# -ne 0 ]; do
        if [ -f $1 && -f $2 ];
            then
            echo copied succesfully
            cp $1 $2
        else 
            echo Neki oda fajlova nije validan
        fi
    done
            
}
case $# in 
    2|4|8)
        func_copy ;;
    1|3|7)
        echo Uneli ste neparan broj argumenata;;
    *)
    echo sta radis to !;;
esac
