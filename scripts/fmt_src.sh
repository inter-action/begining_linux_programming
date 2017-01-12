#!/bin/bash

for file in $(find src -type f); do
    sed -Ei "" 's/[“”]/\"/g' $file;
    # replace `\s#include` with `\ninclude`
    # http://stackoverflow.com/questions/10748453/replace-comma-with-newline-in-sed
    sed -Ei "" $'s/ #include/ \\\n#include/g' $file;
done