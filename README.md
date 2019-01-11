# sonofjavascript/alpine-puppeeter

Minimal docker image based on alpine with NodeJS 11, chromium and puppeeter.

It installs:
- Alpine
- NodeJS
- Chromium
- Puppeeter



## How to use
```
FROM sonofjavascript:alpine-puppeeter:latest

WORKDIR /usr/src

# Build app
COPY package.json ./
RUN npm install
COPY . .
```
