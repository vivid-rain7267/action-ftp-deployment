#!/bin/sh -e

echo "TARGET SERVER: $INPUT_SERVER"
echo "USER: $INPUT_USER"
echo "SWOURCE_DIRECTORY: $INPUT_SOURCE_FOLDER"

echo "==== SOURCE DATA ===="
ls -la "$INPUT_SOURCE_FOLDER"

echo "==== UPLOADING TO SERVER ===="
lftp -c "open -u $INPUT_PASSWORD,$INPUT_USER $INPUT_SERVER; set ssl:verify-certificate no; set ftp:ssl-allow no; mirror -R $INPUT_SOURCE_FOLDER ."
