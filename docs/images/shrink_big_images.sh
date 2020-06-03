#!/bin/bash
#TODO: run mogrify -auto-orient -resize 1024x1024 
# on all JPEG images >1Mb

for imagepath in `find . -size +1M  -name "*.jp*g"`
do
    image=`basename "$imagepath"`
    mv $image ../original_images
    convert "../original_images/$image" -auto-orient -resize 1024x1024 $image
done
