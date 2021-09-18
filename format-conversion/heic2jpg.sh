#!/bin/bash
if ! test -d heic
then
	mkdir heic
fi

for f in *.HEIC *.heic
do
	heif-convert -q 100 "$f" "${f/%.HEIC/.jpg}"
	echo "converted: $f"
	mv "$f" heic/"$f"
done
