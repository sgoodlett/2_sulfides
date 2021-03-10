#!/bin/bash

for i in */
do
for j in $i*/
do
cp input.dat $j
done
done

