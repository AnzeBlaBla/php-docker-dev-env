
ARG PHP_VERSION=8.0
FROM php:${PHP_VERSION}-fpm
RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug