#!/usr/bin/env bash

set -eu

# I had a similar issue when running Oracle 21c XE image on Docker locally when I was trying to connect to it by localhost or 127.0.0.1.

echo "DISABLE_OOB=ON" >> /opt/oracle/oradata/dbconfig/XE/sqlnet.ora
#echo "DISABLE_OOB=ON" >> "$ORACLE_HOME/network/admin/sqlnet.ora"
