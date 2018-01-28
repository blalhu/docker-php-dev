FROM pelso/php:7.2

RUN apt update \
 && apt install -y \
    php7.2-dev \
    php-pear \
    htop \
    vim \
    iputils-ping \
    net-tools \
    mysql-client \
    sqlite3 \
    postgresql-client \
    mc \
    ranger \
    wget \
 && pear config-set preferred_state alpha \
 && pecl install xdebug

COPY xdebug.ini /etc/php/7.2/mods-available/xdebug.ini

RUN ln -s /etc/php/7.2/mods-available/xdebug.ini /etc/php/7.2/fpm/conf.d/20-xdebug.ini \
 && ln -s /etc/php/7.2/mods-available/xdebug.ini /etc/php/7.2/cli/conf.d/20-xdebug.ini

CMD service php7.2-fpm start \
 && service php7.2-fpm restart \
 && sleep infinity
