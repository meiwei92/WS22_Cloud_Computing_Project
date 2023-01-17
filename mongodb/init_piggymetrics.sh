#!/bin/bash

root_auth="-u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD"
# INIT DUMP EXECUTION
if test -n "/dumps/$INIT_DUMP"; then
    echo "execute dump file"
    until mongo admin $root_auth "/dumps/$INIT_DUMP"; do sleep 5; done
fi
