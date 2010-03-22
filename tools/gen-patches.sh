#!/bin/bash
set -e
n=1; 

if [ -z "$1" ] || [ ! -d $1 ];
then
    echo "usage: `basename $0` [patch_directory]";
    exit;
fi

hg st | while read file; 
do
# remove modification symbol from line
    name=${file/M /};
    
# strip directory information from the name
    fname=`basename $name`; 
    
    patch=`printf "%04d_%s.patch" ${n} ${fname/./_}`

# generate a command line to assemble a numbered patch and save it to specifed directory
    hg diff $name > "$1/$patch";
    
#   increment the patch counter
    let "n += 1";

done
