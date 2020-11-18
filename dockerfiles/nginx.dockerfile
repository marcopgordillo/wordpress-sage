FROM nginx:stable-alpine

COPY ./nginx/vhost.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

