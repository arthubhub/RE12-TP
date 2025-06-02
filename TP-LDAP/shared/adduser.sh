#!/bin/sh

cat <<EOF | ldapadd -x -D "cn=Manager,dc=musicschool,dc=fr" -w "secret"
dn: cn=$1,ou=people,dc=musicschool,dc=fr
objectClass: inetOrgPerson
cn: $1
sn: $1
mail: $1@musicschool.fr
EOF
