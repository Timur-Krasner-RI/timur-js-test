# Wrapper images pushed to Docker Hub (timurkri/hardened-from)
FROM timurkri/hardened-from:alpine-3.20 AS alpine_320
FROM timurkri/hardened-from:alpine-3.21 AS alpine_321
FROM timurkri/hardened-from:alpine-3.22.2 AS alpine_3222
FROM timurkri/hardened-from:alpine-3.19 AS alpine_319
FROM timurkri/hardened-from:busybox-1.37.0 AS busybox_1370
FROM timurkri/hardened-from:debian-12-slim AS debian_12_slim
FROM timurkri/hardened-from:ubuntu-24.04 AS ubuntu_2404
FROM timurkri/hardened-from:nginx-1.27-alpine AS nginx_127
FROM timurkri/hardened-from:node-20-alpine AS node_20
FROM timurkri/hardened-from:python-3.12-slim AS python_312
FROM timurkri/hardened-from:python-3.13-alpine AS python_313
FROM timurkri/hardened-from:golang-1.25-alpine AS golang_125
FROM timurkri/hardened-from:eclipse-temurin-21-jre-alpine AS temurin_21
FROM timurkri/hardened-from:curlimages-curl-8.16.0 AS curl_816

FROM timurkri/hardened-from:node-22-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

CMD ["node", "index.js"]
