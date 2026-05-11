FROM node:18.12.1-alpine

WORKDIR /lib
COPY package.json /lib/package.json
COPY package-lock.json /lib/package-lock.json
COPY gtfs-realtime.proto /gtfs-realtime.proto
RUN npm ci
RUN npm run buildProto
