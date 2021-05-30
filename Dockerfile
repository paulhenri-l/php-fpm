FROM composer:2 as composer

FROM php:8.0-fpm-alpine

RUN apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS \
        && pecl install redis \
        && docker-php-ext-enable redis \
        && docker-php-ext-install bcmath \
        && docker-php-ext-install pdo_mysql \
        && docker-php-ext-install pcntl \
        && docker-php-ext-install opcache \
        && docker-php-ext-install sysvmsg \
        && docker-php-ext-install sysvsem \
        && docker-php-ext-install sysvshm \
        && apk del -f .phpize-deps

COPY --from=composer /usr/bin/composer /usr/bin/composer
