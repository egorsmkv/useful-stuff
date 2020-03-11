#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

mysql -u root --password=ROOT_PASSWORD < create_mysql_db.sql

retVal=$?
if [ $retVal -ne 0 ]; then
    echo "Something went wrong"
    exit 1
fi

echo "All is OK, the database was created"
