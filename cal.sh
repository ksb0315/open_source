#!/bin/bash
#calculate integers in textfiles

num1=`cat num1.txt`
num2=`cat num2.txt`

#echo "...non operator parameter..."
#sleep 1
echo "1) add"
echo "2) sub"
echo "3) div"
echo "4) mul"
printf "select menu:"
read menu
echo ""
if [ ${menu} -eq 1 ];then
	ans=`expr $num1 + $num2`
	op="add"
elif [ ${menu} -eq 2 ];then
	ans=`expr $num1 - $num2` 
	op="sub"
elif [ ${menu} -eq 3 ];then
	ans=`expr $num1 / $num2`
	op="div"
elif [ ${menu} -eq 4 ];then
	ans=`expr $num1 \* $num2`
	op="mul"
fi

printf "num1:"
echo $num1
printf "num2:"
echo $num2
printf "op:"
echo ${op}
printf "result:"
echo $ans

