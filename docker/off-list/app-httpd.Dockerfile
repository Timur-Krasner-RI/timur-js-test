FROM timurkri/off-list:httpd-2.4-alpine

COPY httpd-index.html /usr/local/apache2/htdocs/index.html

EXPOSE 80
