#!/bin/bash
read -p "Enter the number of terms" num_terms
#num_terms=10

a=0
b=1

echo "Fibonacci Sequence:"
echo "$a"

for (( i=1; i<num_terms; i++ )); do
		    echo "$b"
			    next=$((a + b))
				    a=$b
					    b=$next
				done

