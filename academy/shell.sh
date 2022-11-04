#!/bin/bash
read a
read b
if [ -gt $a $b ]
then
	echo "a greater than b"
fi

