# rpi-alpine-webdav
A tiny webdav server for Raspberry Pi

<hr />

A no-hassles webdav server build base on arm36v2:alpine and loosely inspired from jgeusebroek/webdav and adapted for arm36v2 platform.

The use of a volume to encapsulate data allow easy backups and migration of the contained data.

The command `run` will create a volume containing your files mounted in the /webdav directory of the container.

## Usage 
>docker run -d \
-p 0.0.0.0:80:80 \
--hostname=web \
--name=webdac_container \
--mount source=/webdav_data_volume,target=/webav \
stephanepiriou/rpi-alpine-webdav

- **user :** 
webdav
- **password :** 
BBD079139851B735F1B4A3198E244D3BD691CFD046D5C77FEA70EDDCAF855356

## Tips 
- You can change the password by generating a new htpasswd from a htpasswd file generator like [http://www.htaccesstools.com/htpasswd-generator/](http://www.htaccesstools.com/htpasswd-generator/)

## Github Repository
github.com/stephanepiriou/rpi-alpine-webdav

## Docker Repository
https://hub.docker.com/r/stephanepiriou/rpi-alpine-webdav/
