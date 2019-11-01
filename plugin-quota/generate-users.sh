#!/bin/bash

# Generate a series of users

IDSTART=1
IDEND=13

for i in $(seq -w $IDSTART $IDEND)
do

    ipa user-add testuser$i --first testuser --last $i --email testuser$i@cato.local --random --shell=/bin/bash

done 
