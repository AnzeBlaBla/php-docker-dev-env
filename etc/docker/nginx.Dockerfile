FROM nginx:alpine

COPY ./etc/ssl /etc/ssl
COPY ./web /var/www/html

COPY ./etc/nginx/default.template.conf /etc/nginx/conf.d/default.template

CMD ["/bin/sh", "-c", "envsubst '$$NGINX_HOST' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]

