#!/bin/sh
if [ ! -f UUID ]; then
  UUID="5ffa3901-8565-4e69-9f77-f6ea914f2cb6"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

