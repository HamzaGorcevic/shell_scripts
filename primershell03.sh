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
#sda






echo unesite direktorijum iz kog zelite pretrazivati

read dir

if test -d $dir;
then
readarray array< <(ls $dir)
echo $array
for element in "${array[@]}";do
echo "element:" $element
done
else 
echo "direktorjium ne postoji"
fi

