#!/bin/bash

echo -n "Enter the suffix: > "
read suffix

mkdir "${suffix}"

find . -type f -iname "*.${suffix}" -print0 | while IFS= read -r -d $'\0' line; do
    name=`basename "${line}"`
    cp "${line}" "./${suffix}/${name}"
done