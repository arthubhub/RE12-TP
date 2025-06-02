#!/bin/sh

ldapdelete -x \
    -D "cn=Manager,dc=musicschool,dc=fr" -w "secret" \
    "cn=$1,ou=people,dc=musicschool,dc=fr"
