docker run -d -p 389:389/tcp -it \
    -v $PWD/shared:/shared \
    --ulimit nofile=1024 \
    --name ldap \
    alpine_ldap

