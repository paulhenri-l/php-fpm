# PHP-FPM Image

This php-fpm image is taylored for Laravel

## Software

Composer is available at the /usr/bin/composer path.

## Enabled extensions

Here are the php extensions enabled.

- bcmath
- ctype
- fileinfo
- json
- mbstring
- pcntl
- pdo
- pdo_mysql
- redis
- tokenizer
- xml

## Usage

Use it in your dockerfile

```dockerfile
FROM paulhenrill/php-fpm:latest

# ...
```
