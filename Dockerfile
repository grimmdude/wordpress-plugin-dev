# https://hub.docker.com/_/php
FROM wordpress:latest as base


# Install Composer
COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY composer.json .phpcs.xml /var/www/html/
COPY php.ini $PHP_INI_DIR/conf.d/

RUN composer install