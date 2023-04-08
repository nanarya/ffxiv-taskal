FROM node:18.15.0-alpine
WORKDIR /usr/src/app/
RUN apk update && apk add bash
RUN yarn global add expo-cli
