#!/bin/bash

file="/var/www/html/indexdoesnotexist.php"
if [ -f "$file" ]
then
        touch /var/www/html/validated.txt
        exit 0
else
        if [ -f "/var/www/html/validated.txt" ]
        then
                rm /var/www/html/validated.txt
        fi
        exit 1
fi
