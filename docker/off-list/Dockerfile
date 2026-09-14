# Bases that are not on the hardened_images list
FROM timurkri/httpd-2.4-alpine AS httpd
FROM timurkri/fedora-40 AS fedora
FROM timurkri/alpine-3.14 AS alpine_314

FROM timurkri/node-12-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --omit=dev || npm install --only=production

COPY . .

CMD ["node", "index.js"]
