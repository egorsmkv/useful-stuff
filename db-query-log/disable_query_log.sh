#!/bin/bash

mysql -u root -pPASSWORD -h 0.0.0.0 -P 3380 < disable_query_log.sql
