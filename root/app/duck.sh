#!/usr/bin/with-contenv bash

. /app/duck.conf
IP=`curl -s "https://v4.ident.me/"`
IPV6=`curl -s "https://v6.ident.me/"`
RESPONSE=`curl -s "https://www.duckdns.org/update?domains=$SUBDOMAINS&token=$TOKEN&ip=$IP&ipv6=$IPV6"`
if [ "$RESPONSE" = "OK" ]; then
echo "Your IP was updated at "$(date)
else
echo "Something went wrong, please check your settings  "$(date)
fi
