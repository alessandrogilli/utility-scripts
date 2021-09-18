#!/bin/bash
if ! test -d "old"
then
	mkdir old
fi

if ! test -d "ppt"
then
	mkdir ppt
fi

mv *.pdf old/

for f in *.ppt
do
	unoconv -f pdf "$f"
	echo "converted: $f"
	mv "$f" ppt/
done

