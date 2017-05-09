#!/bin/sh

if [ "$1" = "server" ]; then
	exec /usr/bin/ssserver \
	     -s "$SERVER_ADDR" \
             -p "$SERVER_PORT" \
             -m "$METHOD"      \
             -k "$PASSWORD"    \
             -t "$TIMEOUT"     \
             -O "$PROTOCOL"    \
             -o "$OBFS"        \
             --fast-open $OPTIONS
else
	exec "$@"
fi

