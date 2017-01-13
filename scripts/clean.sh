#!/bin/bash

function rm_file(){
    local file=$1
    printf "clean file: $file\n"
    rm -f $file;
}

# remove file that starts with ".!"
find src -type f -name ".!*" -exec rm -f {} \;

for file in $(find src -type f); do
    case $file in
    *.*) # has a extension
        case $file in
            *.[oa])
                rm_file $file;
                ;;
            *)
                #do nothing
                ;;
            esac
        ;;
    *) #has no extension
        rm_file $file;
        ;;
    esac
done