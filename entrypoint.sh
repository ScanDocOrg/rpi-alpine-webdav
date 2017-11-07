#!/bin/sh
set -x

# Force user and group because lighttpd runs as webdav
USERNAME=webdav
GROUP=webdav

# Add user if it does not exist
if ! id -u "${USERNAME}" >/dev/null 2>&1; then
	addgroup -g ${USER_GID:=2222} ${GROUP}
	adduser -G ${GROUP} -D -H -u ${USER_UID:=2222} ${USERNAME}
fi

chown webdav /var/log/lighttpd
chown webdav:webdav /webdav

lighttpd -f /etc/lighttpd/lighttpd.conf

# Hang on a bit while the server starts
sleep 5

tail -f /var/log/lighttpd/*.log
