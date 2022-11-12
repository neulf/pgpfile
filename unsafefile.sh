#!/bin/bash

# Usage : DecryptionBatch <Folder>

# for i in `ls`
# gpg --passphrase <passphrase> -o `echo $i | sed 's/....$//'` -d $i

# Read passphrase
echo -n passphrase:
read -s passphrase
echo

for i in `ls $1 | sed "s:^:$1/:"`
do
    newFile=`echo $i | sed 's/....$//'`
    gpg --passphrase $passphrase -o $newFile -d $i
done