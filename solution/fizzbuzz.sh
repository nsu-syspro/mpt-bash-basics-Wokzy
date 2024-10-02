#!/usr/bin/bash

i=0
n="$1"

while [ $i -lt $n ]; do
	i=$(( $i + 1 ))

	if [ $(($i % 3)) -eq 0 ] && [ $(($i % 5)) -eq 0 ]; then
		echo "Fizz Buzz"
		continue
	fi

	if [ $(( $i % 3 )) -eq 0 ]; then
		echo "Fizz"
		continue
	fi

	if [ $(($i % 5)) -eq 0 ]; then
		echo "Buzz"
		continue
	fi

	echo "$i"
done
