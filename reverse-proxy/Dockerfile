# Base image ##########################################################################################################

FROM nginx:alpine

MAINTAINER ximlor

# Dependencies ########################################################################################################

RUN sed -i '1i http://mirrors.ustc.edu.cn/alpine/v3.4/main/' /etc/apk/repositories

ADD nginx.conf /etc/nginx/

ARG PHP_UPSTREAM=php

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && adduser -D -H -u 1000 -s /bin/bash www-data \
    && rm /etc/nginx/conf.d/default.conf \
    && echo "upstream php-upstream { server ${PHP_UPSTREAM}:9000; }" > /etc/nginx/conf.d/upstream.conf

COPY key/ /etc/nginx/key

# Final ###############################################################################################################

CMD ["nginx"]

EXPOSE 80 443
