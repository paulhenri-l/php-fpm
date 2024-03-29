FROM composer:2 as composer

FROM php:8.1-fpm-alpine

RUN apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS \
        && pecl install redis \
        && pecl install apcu \
        && docker-php-ext-enable redis \
        && docker-php-ext-enable apcu \
        && docker-php-ext-install bcmath \
        && docker-php-ext-install pdo_mysql \
        && docker-php-ext-install pcntl \
        && docker-php-ext-install opcache \
        && docker-php-ext-install sysvmsg \
        && docker-php-ext-install sysvsem \
        && docker-php-ext-install sysvshm \
        && pecl clear-cache \
        && apk del -f .phpize-deps

RUN apk add --no-cache git

COPY --from=composer /usr/bin/composer /usr/bin/composer
