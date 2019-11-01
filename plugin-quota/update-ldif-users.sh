#!/bin/bash

LDIFFILE=/data/usermod.ldif

# Get list of users lacking 'scinetquota' object
ldapsearch -Y GSSAPI  '(!(objectClass=scinetquota))' -b "cn=users,cn=accounts,dc=cato,dc=local" dn | grep uid= > /data/users-without-scinetquota.txt

# Loop through users.  Generate LDIF file to modify the entry and apply changes.
IFS=$'\n'
for userline in $(cat /data/users-without-scinetquota.txt)
do 
    echo $userline 

    rm -f $LDIFFILE 

    echo "$userline" >> $LDIFFILE 
    echo "changetype: modify" >> $LDIFFILE
    echo "add: objectClass" >> $LDIFFILE
    echo "objectClass:scinetquota" >> $LDIFFILE

    ldapmodify -Y GSSAPI -f $LDIFFILE 

    echo ""
    echo ""
    echo ""

done 

