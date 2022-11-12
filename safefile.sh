#!/bin/bash

# Usage : EncryptionBatch <Folder> <Recipient>

# for i in `ls`
# gpg -e $i

for i in `ls $1 | sed "s:^:$1/:"`
do
    gpg -r $2 -e $i
done