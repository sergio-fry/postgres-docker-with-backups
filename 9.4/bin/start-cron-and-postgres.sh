#!/bin/sh

if [ "$1" = 'postgres' ]
then
  service cron start
fi

exec docker-entrypoint.sh $@
