FROM php:7.4-fpm

RUN apt-get update \
&& docker-php-ext-install pdo pdo_mysql\
&& apt-get install -y wget git unzip \
&& pecl install xdebug \
    && docker-php-ext-enable xdebug


ADD docker/conf/php.ini /usr/local/etc/php/php.ini

RUN wget https://getcomposer.org/installer -O - -q \
    | php -- --install-dir=/bin --filename=composer --quiet

CMD ["php-fpm"]
