ubuntu@ip-172-31-38-169:~$ vim divisible-by-3-and-5-not-15.sh

#!/bin/bash

######
#This script shows number in 1 to 100 range
# that are divisible by 3 or  5, and not 15
# Author : Bhargavi
# Date: Feb 29
#######

for i in {1..100}; do
    if (( i % 3 == 0 || i % 5 == 0 ))  && (( i % 15 != 0 )); then
        echo $i
    fi
done
