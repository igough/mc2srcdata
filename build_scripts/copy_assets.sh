#!/bin/sh

if [ "$1"=="" ]
then
    DST=../../mc2/build64
else
    DST=$1
fi

cp -r data $DST
cp -r assets $DST
cp *.cfg $DST
cp *.fst $DST