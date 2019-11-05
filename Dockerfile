# FROM abaez/docker-luarocks
FROM imolein/luarocks:5.3
LABEL maintainer "Michal Hoftich michal.h21@gmail.com"
RUN apk add --no-cache build-base unzip lua-dev git \
  && curl -L https://github.com/michal-h21/lettersmith/tarball/master | tar xz \
  && cd michal* \
  && luarocks make \
  && cd .. \
  && rm -rf michal* \
  && mkdir -p /web/scripts \
  && mkdir -p /web/html \
  && mkdir -p /web/www 

ENV SCRIPT_FILE /www/web.lua
ENV HTML_DIR /www/html
ENV WWW_DIR /www/www
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

