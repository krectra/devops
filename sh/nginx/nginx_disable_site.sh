#!/usr/bin/env bash

if [ $EUID -ne 0 ]; then
    echo "You must be root: \"sudo nginx_disable_site\""
    exit 1
fi

# -z str: Returns True if the length of str is equal to zero.
if [ -z "$1" ]; then
    echo "Please choose a site."
    exit 1
else
    echo "Disabling site $1..."
    # -h filename: True if file exists and is a symbolic link.
    # -f filename: Returns True if file, filename is an ordinary file.
    if [ ! -h "/etc/nginx/sites-enabled/$1" ] && [ ! -f "/etc/nginx/sites-enabled/$1" ]; then
        echo "$1 is not enabled."
        exit 1
    else
        rm /etc/nginx/sites-enabled/$1
        echo "Disabled $1"
    fi
fi
