#!/bin/sh
i=1
while true
do
    start=$(date +%s%N)
    sudo python3 MainTest.py
    end=$(date +%s%N)
    take=$(( end - start ))
    time=`echo "scale=2; $take/1000000000" | bc`
    #echo 第$i次红包广场扫描消耗时间 ${time} s.
     i=`expr $i + 1`
done
