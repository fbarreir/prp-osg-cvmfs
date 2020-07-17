#!/bin/bash
# Taken from https://github.com/slateci/container-osg-frontier-squid/blob/master/app/entrypoint.sh

if [[ ! -e /etc/squid/squid.conf ]]; then
  echo "Generating squid.conf..."
  /etc/squid/customize.sh < /etc/squid/squid.conf.frontierdefault > /etc/squid/squid.conf
fi

if [[ -z ${1} ]]; then
  if [[ ! -d /var/cache/squid/00 ]]; then
    echo "Initializing cache..."
    /usr/sbin/squid -N -f /etc/squid/squid.conf -z
  fi
  echo "Starting squid..."
  exec /usr/sbin/squid -f /etc/squid/squid.conf -NYCd 1
else
  exec "$@"
fi