#if test "$#" -ne 1
#then
#    echo "Broj argumenata nije odgovarajuci"
#else
#if test -f $1
#then
#echo "Postoji fajl"
#cat $1
#elif test -d $1
#then
#cd $1 ls -al
#else
#touch $1
#echo "Uspesno kreiran"
#fi
#fi
#
#case $1 in
#    *.c)
#        cc $1;;
#    *.h)
#        more $1;;
#    *)
#        rm $1;;
#esac

### primer 2

#echo -n "Sta dalje [(Y)es|(N)o|(C)ont]: "
#read odgovor
#case $odgovor in
#y|Y)
#echo "YES"
#;;
#n|N)
#echo "NO"
#;;
#c|C)
#echo "Continue"
#;;
#*)
#echo "Unkown"
#;;
#esac
#


#####primer 3

#case $1 in
#    *.sh)
#        sh $1 $2;;
#    *.txt)
#        cat $1;;
#    *)
#        rm $1;;
#esac
#fi




######primer 4

#read name
#while(test -f #)
#do
#    echo $1$2
#    shift 
#done


###### primer 5

#ind=0
#max=10
#while( test $ind -lt $max)
#do
#echo "Izlaz: $ind"
#let "ind++"
#done



###### primer 6

#for ind in {1...5}
#do
#suma ='expr $suma + $ind'
#let 'suma = suma+ind'
#done
#echo "Zbi = $suma"
#





# brise sve fajlove sa manje od 30 karaktera

echo unesite direktorijum iz kog zelite pretrazivati
read dir

if test -d $dir;
then

echo $temp

for element in "$dir"/*;do
    temp=$(wc -c < $element)
    echo temp

    if [ "$temp" -gt 30 ] && [[ "$element" == *.txt ]];
    then

        echo "elemen je veci od 30=$element"
    else 
        rm $element
        echo "element je manji od 30"
    fi
done

else 
echo "direktorjium ne postoji"
fi

