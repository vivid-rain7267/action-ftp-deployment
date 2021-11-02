#!/bin/sh

ls -la "$4"

lftp -v -c "open -u ${2},${3} ${1}; set ssl:verify-certificate no; set ftp:ssl-allow no; mirror -R ${4} ."
