docker run -it \
    -p 389:389/tcp \
    -v "$PWD/shared:/shared" \
    --ulimit nofile=1024 \
    --name ldap \
    alpine_ldap

