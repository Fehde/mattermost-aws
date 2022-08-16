ARG NGINX_IMAGE_TAG

FROM --platform=linux/x86_64 nginx:${NGINX_IMAGE_TAG}

ADD ./nginx/conf.d/* /etc/nginx/conf.d
