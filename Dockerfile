FROM node:11-alpine

# Chromium launch path for puppeeter
ENV CHROME_BIN /usr/bin/chromium-browser

# Skip installing Chrome. It will be use installed package
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

# Installs latest Chromium (71) package.
RUN apk update && apk upgrade && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    apk add --no-cache \
      chromium@edge \
      harfbuzz@edge \
      nss@edge

# Puppeteer v1.9.0 works with Chromium 71.
RUN yarn add puppeteer@1.11.0
