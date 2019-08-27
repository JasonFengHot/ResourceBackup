#!/bin/bash
# get all filename in specified path

path=$1
files=$(ls $path)
for filename in `find . -name "*.png"`;
do
    echo "convert"$filename
    convert $filename -define png:color-type=2 $filename
done
