#!/bin/bash
#Find the first 10 biggestfile in the file system and write the output to a file

function  find10biggestinFileSystem {
    # for some reason i was getting a permission denied trying to run find in my root folder
    #command 
    # find / -type f -exec ls -s {}+ | sort -n -r | head -10 > 10biggest.txt

    #instead of searching through the root, this search in the current dir
    find . -type f -exec ls -s {} + |sort -n -r | head -10 > 10biggest.txt
}

find10biggestinFileSystem
