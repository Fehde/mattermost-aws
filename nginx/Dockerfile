ARG NGINX_IMAGE_TAG

FROM nginx:${NGINX_IMAGE_TAG}

EXPOSE 80/tcp

ADD ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

# 検証時
# CMD ["nginx-debug", "-g", "daemon off;"]
