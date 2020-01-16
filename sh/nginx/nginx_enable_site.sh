#!/usr/bin/env bash

if [ $EUID -ne 0 ]; then
    echo "You must be root: \"sudo nginx_enable_site\""
    exit 1
fi

# -z str: Returns True if the length of str is equal to zero.
if [ -z "$1" ]; then
    echo "Please choose a site."
    exit 1
else
    echo "Enabling site $1..."
    # -h filename: True if file exists and is a symbolic link.
    # -f filename: Returns True if file, filename is an ordinary file.
    if [ -h "/etc/nginx/sites-enabled/$1" ] || [ -f "/etc/nginx/sites-enabled/$1" ]; then
        echo "$1 is already enabled."
        exit 1
    else
        if [ ! -f "/etc/nginx/sites-available/$1" ]; then
            echo "Site $1 does not exist in /etc/nginx/sites-available."
            exit 1
        else
            ln -s /etc/nginx/sites-available/$1 /etc/nginx/sites-enabled/$1
            echo "Enabled $1"
            exit 0
        fi
    fi
fi
