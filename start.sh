#!/bin/sh

# docker build . -t wallet-web/web

# docker run -p 8080:80 wallet-web/web

docker build -t web .

docker run --name web -d -p 80:5000 --rm web
# docker run --name web -p 80:5000 \
# -e REACT_APP_ENVIRONMENT=docker \
# -e REACT_APP_TIMEZONE=America/Pacific \
# --rm web
# 111
# 222
