#!/bin/bash

function NOD {
	local a=$1
	local b=$2
        while [ $b -ne 0 ];
	do
		local temp=$b
		b=$((a%b))
		a=$temp
	done
	echo $a
}

if ! [[ $1 =~ ^-?[0-9]+$ ]] || ! [[ $2 =~ ^-?[0-9]+$ ]]; then
    echo "Ошибка: оба аргумента должны быть целыми числами"
    exit 1
fi



if (($1<0)); then
    num1=$((-$1))
else
    num1=$(($1))
fi

if (($2<0)); then
    num2=$((-$2))
else
    num2=$(($2))
fi


result=$(NOD $num1 $num2)
echo "НОД чисел $1 и $2 это $result"
