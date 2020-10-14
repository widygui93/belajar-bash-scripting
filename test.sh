#!/bin/sh
pwd
ls

echo "what is your name?"
read PERSON
echo "Hello, $PERSON"
var_1="helloo"
echo $var_1
#readonly var_1
var_1="hellooo"
echo $var_1
var_2="hai"
echo $var_2
#readonly var_2
unset var_2
echo $var_2
echo $$

echo "File Name: $0"
echo "First Parameter: $1"
echo "Second Parameter: $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters: $#"

for TOKEN in $@
do
    echo $TOKEN
done

echo $? #exit status, 0 is success, 1 is failed

echo "======TEST ARRAY======"
NAME[0]="sally"
NAME[1]="GUI"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"
echo "All Index with First Method: ${NAME[*]}"
echo "All Index with Second Method: ${NAME[@]}"

echo "======TEST BASIC OPERATION======"
val=`expr 20 \* 10`
echo "total value: $val"
val_1=$val
echo "value of variable var_1: $val_1"

echo "======TEST BASIC CONDITIONAL======"
if [ $val == $val_1 ]
then 
    echo "variable val sama dengan variable val_1"
else
    echo "variable val tidak sama dengan variable val_1"
fi

#echo "Enter file name:"
#read file
file="test.sh"
if [ -e $file ]
then 
    echo "file is exists"
else
    echo "file is not exists"
fi

if [ -d $file ]
then 
    echo "variable file is directory"
else
    echo "varible file is not directory"
fi

if [ -r $file ]
then    
    echo "file has read access"
else
    echo "file does not has read access"
fi

echo "======TEST BASIC LOOPING======"
for array_items in ${NAME[*]}
do
    echo "hai, $array_items"
done

for x in 1 2 3
do
    for y in 0 5
    do 
        if [ $x -eq 2 -a $y -eq 0 ]
        then
            break 2
        else    
            echo "$x $y"
        fi
    done
done

echo "======TEST BASIC SHELL SUBSTITUTION======"
echo "hello \tworld \\ \nhaii"

DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in users are $USERS"
if [ $USERS -gt 1 ]
then 
    echo "user logged in more than 1"
else 
    echo "user logged in is one person"
fi
echo "======TEST BASIC QUOTING MECHANISMS======"
echo "It's Shell Programming $DATE"