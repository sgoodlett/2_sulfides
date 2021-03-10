#!/bin/bash

for i in s2_m/
do
for j in $i*/
do
cp input.dat $j
done
done

