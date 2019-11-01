#!/bin/bash

# mkdir -p /usr/share/ipa/schema.d
# mkdir -p /usr/share/ipa/updates
mkdir -p /usr/share/ipa/ui/js/plugins/groupquota
mkdir -p /usr/share/ipa/ui/js/plugins/grouparchivequota
mkdir -p /usr/share/ipa/ui/js/plugins/userquota
mkdir -p /usr/share/ipa/ui/js/plugins/usergroupquota
mkdir -p /usr/lib/python2.7/site-packages/ipaclient/plugins 
mkdir -p /usr/lib/python2.7/site-packages/ipaserver/plugins 

# cp schema.d/76-scinetquota.ldif /usr/share/ipa/schema.d/76-scinetquota.ldif

# cp updates/76-scinetquotaupdate.update /usr/share/ipa/updates/76-scinetquotaupdate.update

cp ui/groupquota.js /usr/share/ipa/ui/js/plugins/groupquota/groupquota.js
cp ui/grouparchivequota.js /usr/share/ipa/ui/js/plugins/grouparchivequota/grouparchivequota.js
cp ui/userquota.js /usr/share/ipa/ui/js/plugins/userquota/userquota.js
cp ui/usergroupquota.js /usr/share/ipa/ui/js/plugins/usergroupquota/usergroupquota.js

cp ipaclient/user-scinetuserquota.py /usr/lib/python2.7/site-packages/ipaclient/plugins/user-scinetuserquota.py 
cp ipaclient/user-scinetusergroupquota.py /usr/lib/python2.7/site-packages/ipaclient/plugins/user-scinetusergroupquota.py 

cp ipaserver/group-scinetgroupquota.py /usr/lib/python2.7/site-packages/ipaserver/plugins/group-scinetgroupquota.py
cp ipaserver/group-scinetgrouparchivequota.py /usr/lib/python2.7/site-packages/ipaserver/plugins/group-scinetgrouparchivequota.py 
cp ipaserver/user-scinetuserquota.py /usr/lib/python2.7/site-packages/ipaserver/plugins/user-scinetuserquota.py 
cp ipaserver/user-scinetusergroupquota.py /usr/lib/python2.7/site-packages/ipaserver/plugins/user-scinetusergroupquota.py 

cp branding/scinet-login-screen-background.jpg  /usr/share/ipa/ui/images/login-screen-background.jpg
cp branding/USDAARSIdentityRGB3_Small.png  /usr/share/ipa/ui/images/product-name.png
cp branding/USDAARSIdentityRGB3_Small.png  /usr/share/ipa/ui/images/header-logo.png
cp branding/USDA-Logo.png  /usr/share/ipa/ui/images/login-screen-logo.png

echo "Now run ipa-server-upgrade"
#ipa-server-upgrade
