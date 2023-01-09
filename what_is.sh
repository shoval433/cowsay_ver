#!/bin/bash
test=$(echo $1 | cut -d '/' -f1)
if [ "$test" == "release" ] ; then
version=$(echo $1 | cut -d '/' -f2)
echo $version
else
echo 0
fi