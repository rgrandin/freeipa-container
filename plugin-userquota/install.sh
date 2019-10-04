#!/bin/bash

mkdir -p /usr/share/ipa/schema.d
mkdir -p /usr/share/ipa/updates
mkdir -p /usr/share/ipa/ui/js/plugins/userquota
mkdir -p /usr/share/ipa/ui/js/plugins/usergroupquota
mkdir -p /usr/lib/python2.7/site-packages/ipaclient/plugins 
mkdir -p /usr/lib/python2.7/site-packages/ipaserver/plugins 

cp schema.d/76-inetuserquota.ldif /usr/share/ipa/schema.d/76-inetuserquota.ldif
cp updates/76-inetquotaupdate.update /usr/share/ipa/updates/76-inetquotaupdate.update
cp ui/userquota.js /usr/share/ipa/ui/js/plugins/userquota/userquota.js
cp ui/usergroupquota.js /usr/share/ipa/ui/js/plugins/usergroupquota/usergroupquota.js
cp ipaclient/user-inetuserquota.py /usr/lib/python2.7/site-packages/ipaclient/plugins/user-inetuserquota.py 
cp ipaclient/user-inetusergroupquota.py /usr/lib/python2.7/site-packages/ipaclient/plugins/user-inetusergroupquota.py 
cp ipaserver/user-inetuserquota.py /usr/lib/python2.7/site-packages/ipaserver/plugins/user-inetuserquota.py 
cp ipaserver/user-inetusergroupquota.py /usr/lib/python2.7/site-packages/ipaserver/plugins/user-inetusergroupquota.py 

echo "Now run ipa-server-upgrade"
#ipa-server-upgrade