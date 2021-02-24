#!/bin/bash

if [ "$EUID" -ne 0 ]
then
    echo "Please run with sudo!"
else
    which gitgit > /dev/null

    if [[ $? != 0 ]]
    then
        S_NAME=$0
        S_PATH=$(dirname "$0")

        if [[ ! $S_NAME =~ ^\.\/ ]] && [[ $S_PATH != "." ]]
        then
            echo "Please run from the directory where the script exists"
        fi

        MYPATH="$(pwd)"
        ln -s $MYPATH/gitgit /usr/local/bin/gitgit
        chmod 755 $MYPATH/gitgit

        which gitgit > /dev/null
        
        if [[ $? == 0 ]]
        then
            echo "gitgit was successfully configured!"
        else
            echo "gitgit failed to install..."
        fi
    
    else 
        echo "gitgit is already installed at $(which gitgit)"
    fi
fi