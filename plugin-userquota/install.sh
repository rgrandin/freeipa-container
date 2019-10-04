#!/bin/bash

mkdir -p /usr/share/ipa/schema.d
mkdir -p /usr/share/ipa/updates
mkdir -p /usr/share/ipa/ui/js/plugins/userquota
mkdir -p /usr/share/ipa/ui/js/plugins/usergroupquota
mkdir -p /usr/lib/python2.7/site-packages/ipaclient/plugins 
mkdir -p /usr/lib/python2.7/site-packages/ipaserver/plugins 

cp schema.d/76-scinetuserquota.ldif /usr/share/ipa/schema.d/76-scinetuserquota.ldif
cp updates/76-scinetquotaupdate.update /usr/share/ipa/updates/76-scinetquotaupdate.update
cp ui/userquota.js /usr/share/ipa/ui/js/plugins/userquota/userquota.js
cp ui/usergroupquota.js /usr/share/ipa/ui/js/plugins/usergroupquota/usergroupquota.js
cp ipaclient/user-scinetuserquota.py /usr/lib/python2.7/site-packages/ipaclient/plugins/user-scinetuserquota.py 
cp ipaclient/user-scinetusergroupquota.py /usr/lib/python2.7/site-packages/ipaclient/plugins/user-scinetusergroupquota.py 
cp ipaserver/user-scinetuserquota.py /usr/lib/python2.7/site-packages/ipaserver/plugins/user-scinetuserquota.py 
cp ipaserver/user-scinetusergroupquota.py /usr/lib/python2.7/site-packages/ipaserver/plugins/user-scinetusergroupquota.py 

echo "Now run ipa-server-upgrade"
#ipa-server-upgrade
