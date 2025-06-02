#!/bin/sh

ldapmodrdn -x \
    -D "cn=Manager,dc=musicschool,dc=fr" -w "secret" \
    -r "cn=$1,ou=people,dc=musicschool,dc=fr" "cn=$2"
