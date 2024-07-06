FROM php:fpm-alpine

WORKDIR /var/www/html

COPY src .
 
RUN docker-php-ext-install pdo pdo_mysql
 
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
 
USER laravel

# we don't use any command here. If no command is available in the Dockerfile, Docker will use the command available in the base image.


