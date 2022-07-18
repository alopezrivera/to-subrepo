#!/bin/bash

find . -name .git -type d -prune | while read d; do

    # repo
    echo $PWD
    printf "\n$PWD"
    printf -v underline '%*s' "${#PWD}"
    printf '%s\n\n' "${underline// /=}"
    
    # enter
    cd $d/..
    
    cd $OLDPWD
done
