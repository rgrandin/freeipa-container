#!/bin/bash

LDIFFILE=/data/groupmod.ldif

# Get list of users lacking 'scinetquota' object
ldapsearch -Y GSSAPI  '(!(objectClass=scinetquota))' -b "cn=groups,cn=accounts,dc=cato,dc=local" dn | grep "proj-" | grep "dn:" > /data/groups-without-scinetquota.txt

# Loop through users.  Generate LDIF file to modify the entry and apply changes.
IFS=$'\n'
for groupline in $(cat /data/groups-without-scinetquota.txt)
do 
    echo $groupline 

    rm -f $LDIFFILE 

    echo "$groupline" >> $LDIFFILE 
    echo "changetype: modify" >> $LDIFFILE
    echo "add: objectClass" >> $LDIFFILE
    echo "objectClass:scinetquota" >> $LDIFFILE

    ldapmodify -Y GSSAPI -f $LDIFFILE 

    echo ""
    echo ""
    echo ""

done 

