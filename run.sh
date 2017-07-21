#!/bin/bash -e

docker run --name ldap-service --hostname ldap-service -p 389:389 --detach osixia/openldap:1.1.8
docker run --name phpldapadmin-service --hostname phpldapadmin-service -p 6443:443 --env PHPLDAPADMIN_LDAP_HOSTS=10.0.0.5 --detach osixia/phpldapadmin:0.7.0

