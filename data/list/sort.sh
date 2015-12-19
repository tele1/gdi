#!/bin/sh


 a=$(ls | grep ".list")
 b=$(echo "$a" | wc -l)


echo "$a" > /tmp/sort.gdi
echo "created /tmp/sort.gdi"
echo "$b"
echo "========"

		for i in `seq 1 $b`
		do


			#line from file
			c=$(awk 'NR=='$i /tmp/sort.gdi)
			echo "$c"

			echo "$(cat "$c" | sort)" > "$c"
		done

rm  -vif /tmp/sort.gdi
