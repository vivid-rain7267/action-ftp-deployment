#!/bin/sh

FTP_SERVER=$1
FTP_USER=$2
FTP_PASSWORD=$3
SOURCE_DIRECTORY=$4

apk add --no-cache lftp bash

echo "==== SOURCE DATA ===="
ls -la "$SOURCE_DIRECTORY"


echo "==== UPLOADING TO SERVER ===="
lftp -c "open -u $FTP_USER,$FTP_PASSWORD $FTP_SERVER; set ssl:verify-certificate no; set ftp:ssl-allow no; mirror -R $SOURCE_DIRECTORY ."
