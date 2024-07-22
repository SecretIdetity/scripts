#!/bin/bash
#../88x31.sh | xargs -I {} rm {}
md5 ./* | sort -r >88x31.txt
l="";
while read a;
do b=(${a// / });
    c=${b[0]};
    if [ "$c" = "$l" ]
        then echo ${b[1]};
    fi
    l=$c;
done <./88x31.txt
rm 88x31.txt
