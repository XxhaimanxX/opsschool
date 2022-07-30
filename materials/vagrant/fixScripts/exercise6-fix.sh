#!/bin/bash
if [ $HOSTNAME == server1 ]
then
        for i in ${@:1:$#-1}
        do
                scp $i server2:${@: -1}
                sum=$((sum + $(ls -l $i | awk '{print $5}')))
        done
else
        for i in ${@:1:$#-1}
        do
                scp $i server1:${@: -1}
                sum=$((sum + $(ls -l $i | awk '{print $5}')))
        done
fi
echo $sum

