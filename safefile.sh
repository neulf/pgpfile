# Usage : EncryptionBatch <Folder> <Recipient>

for i in `find $1 -name "*.*" ! -name "*.gpg" ! -name "."`
do
    sudo gpg --batch --yes -r $2 -e $i
done