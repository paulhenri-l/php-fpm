# PHP-FPM Image

This php-fpm image is tailored for Laravel it uses php8

## Software

Composer and git are both installed.

## Enabled extensions

Here are the php extensions enabled.

- apcu
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
FROM paulhenrill/php-fpm:2.4

# ...
```
