#!/bin/bash

# Get the latest tag from the repository

version=$(echo $1 | cut -d '/' -f2)
tagVer=$(git describe --tags | cut -d '.' -f1-2) 
if [ "$version" == "$tagVer" ];then
latest_tag=$(git describe --tags `git rev-list --tags --max-count=1`)
else
latest_tag=$version.0
fi

# Split the tag into parts separated by '.'
tag_parts=(${latest_tag//./ })

# Increment the third part of the tag
((tag_parts[2]++))

# Join the parts back together to form the new tag
next_tag="${tag_parts[0]}.${tag_parts[1]}.${tag_parts[2]}"

# Print the new tag
echo "$next_tag"
