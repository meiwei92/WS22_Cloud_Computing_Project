#!/bin/bash

echo "Entered Init script"
if test -z "$MONGO_INITDB_ROOT_USERNAME"; then
    echo "MONGO_INITDB_ROOT_USERNAME not defined"
    exit 1
fi

if test -z "$MONGO_INITDB_ROOT_PASSWORD"; then
    echo "MONGO_INITDB_ROOT_PASSWORD not defined"
    exit 1
fi

if test -z "$MONGODB_PASSWORD"; then
    echo "MONGODB_PASSWORD not defined"
    exit 1
fi

root_auth="-u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD"

echo "setup piggymetrics db users"
create_db_user="db = db.getSiblingDB('piggymetrics'); if (!db.getUser('user')) { db.createUser({ user: 'user', pwd: '$MONGODB_PASSWORD', roles: [ {role:'readWrite', db:'piggymetrics'} ]}) }"
until mongo admin $root_auth --eval "$create_db_user"; do sleep 5; done

if test -n "$MONGODB_EXPORTER_PASSWORD"; then
    echo "create exporter user"
    create_export_user="if (!db.getUser('exporter')) { db.createUser({ user: 'exporter', pwd:'$MONGODB_EXPORTER_PASSWORD', roles: [ {role:'clusterMonitor', db:'admin'}, {role:'read', db:'piggymetrics'} ]}) }"
    until mongo admin $root_auth --eval "$create_export_user"; do sleep 5; done
fi
