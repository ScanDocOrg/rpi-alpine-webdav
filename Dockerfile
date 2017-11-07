FROM arm32v6/alpine:latest

ENV PACKAGE_LIST="lighttpd lighttpd-mod_webdav lighttpd-mod_auth" 

RUN apk add --no-cache ${PACKAGE_LIST}

VOLUME ["/webdav"]

ADD files/* /etc/lighttpd/
ADD ./entrypoint.sh /entrypoint.sh

EXPOSE 80

RUN chmod u+x  /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]