#!/bin/bash

x=0; y=0
for i in $(seq 1 100);
do
    x=$(($i))
    y=$(($i))
    echo moved to $x $y
    xdotool mousemove $x $y
    sleep 300
done

