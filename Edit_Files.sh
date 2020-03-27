#!/bin/bash
IFS=$'\n'
#FILES=*.wav

find . -iname "*.wav" | while read f 
do
    sox $f trimmed.wav trim 0 60 && mv trimmed.wav $f;
done
