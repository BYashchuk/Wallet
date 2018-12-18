# STAGE 1 kss
FROM node:9.11.2 AS builder
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

# STAGE 2 kss
FROM nginx
COPY --from=builder /usr/src/app/build /usr/share/nginx/html

#FROM node:8.11.3
#
## Create app directory
#WORKDIR /usr/src/app
#
## Expose port for service
#EXPOSE 5000
#
## Install and configure `serve`.
#RUN npm install -g serve
#
## Copy source code to image
#COPY . .
#
## Install dependencies
#RUN npm install
#
## Build app and start server from script
#CMD sh run.sh



