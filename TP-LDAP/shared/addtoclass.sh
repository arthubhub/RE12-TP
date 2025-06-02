#!/bin/sh

cat <<EOF | ldapmodify -x \
    -D "cn=Manager,dc=musicschool,dc=fr" -w "secret"
dn: cn=$2,ou=classes,dc=musicschool,dc=fr
changetype: modify
add: uniqueMember
uniqueMember: cn=$1,ou=people,dc=musicschool,dc=fr
EOF
