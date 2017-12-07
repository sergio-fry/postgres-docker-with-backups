#!/bin/sh

POSTGRES_USER="${POSTGRES_USER:-postgres}"
PGPASSWORD=$POSTGRES_PASSWORD pg_dumpall -h 0.0.0.0 -U $POSTGRES_USER > /dumps/dump.sql


if [ "$PASSPHRASE" = '' ]
then
  ENCRYPTION='--no-encryption'
fi

duplicity $ENCRYPTION --allow-source-mismatch /dumps file:///backups
