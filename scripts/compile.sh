#!/bin/bash

pattern=$1
if [[ -z "$pattern" ]]; then
    pattern="*.c"
fi

for file in $(find src -type f -name "$pattern"); do
    if grep -q 'int main()' $file; then
        # targetpath=${file/#src/bin}
        targetpath=${file/%.c/}
        eval "gcc -o ${targetpath} $file"
    fi
done

exit 0