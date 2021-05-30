# PHP-FPM Image

[![Build & Publish](https://github.com/paulhenri-l/php-fpm/actions/workflows/build-publish.yml/badge.svg)](https://github.com/paulhenri-l/php-fpm/actions/workflows/build-publish.yml)

This php-fpm image is tailored for Laravel it uses php8

## Software

Composer is available at the /usr/bin/composer path.

## Enabled extensions

Here are the php extensions enabled.

- bcmath
- ctype
- fileinfo
- json
- mbstring
- opcache
- pcntl
- pdo
- pdo_mysql
- redis
- tokenizer
- xml

## Usage

Use it in your dockerfile

```dockerfile
FROM paulhenrill/php-fpm:2.0

# ...
```
