#
#read -p "Unesite ime: " ime
#
#if test -f $ime
# then
#    cat $ime
#elif [ -d $ime ]
#then
#    temp=$(ls $ime)
#    echo $temp
#else
#    echo Nesto ne valja
#fi
#
#

case $1 in
    *.c)
        cc $1
        ./a.out;;
    *.h)
        cat $1;;
    *)
        rm $1;;
esac

