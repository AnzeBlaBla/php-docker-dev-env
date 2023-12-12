
ARG PHP_VERSION=8.0
FROM php:${PHP_VERSION}-fpm
RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug

RUN docker-php-ext-install mysqli pdo pdo_mysql

# php.ini
COPY ./etc/php/php.ini /usr/local/etc/php/conf.d/php.ini

# Application
COPY ./web /var/www/html