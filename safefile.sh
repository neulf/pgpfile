# Usage : EncryptionBatch <Folder> <Recipient>

for i in `ls $1 | sed "s:^:$1/:"`
do
    sudo gpg -r $2 -e $i
done