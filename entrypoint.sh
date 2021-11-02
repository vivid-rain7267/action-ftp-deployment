#!/bin/sh

lftp -c "open -u $2,$3 $1; set ssl:verify-certificate no; set ftp:ssl-allow no; mirror -R $4 ."
