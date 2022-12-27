# WPCS not working with PHP 8 yet...
# FROM wordpress:latest as base
FROM wordpress:5.7.2-php7.3-apache as base

ENV PATH="${PATH}:/var/www/html/vendor/bin"

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY composer.json .phpcs.xml /var/www/html/

COPY php.ini $PHP_INI_DIR/conf.d/

RUN composer install && phpcs --config-set installed_paths /var/www/html/vendor/wp-coding-standards/wpcs/
