ARG NGINX_IMAGE_TAG

FROM nginx:${NGINX_IMAGE_TAG}

ADD ./nginx/conf.d/* /etc/nginx/conf.d
RUN chmod +r /etc/nginx/conf.d
