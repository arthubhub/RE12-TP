#!/bin/sh

cat <<EOF | ldapmodify -x \
    -D "cn=Manager,dc=musicschool,dc=fr" -w "secret"
dn: cn=$1,ou=people,dc=musicschool,dc=fr
changetype: modify
replace: sn
sn: $2
EOF
