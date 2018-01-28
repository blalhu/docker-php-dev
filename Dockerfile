FROM pelso/php:7.0

RUN apt update \
 && apt install -y \
    php7.0-xdebug \
    htop \
    vim \
    iputils-ping \
    net-tools \
    mysql-client \
    sqlite3 \
    postgresql-client \
    mc \
    ranger \
    wget

COPY xdebug.ini /etc/php/7.0/mods-available/xdebug.ini

CMD service php7.0-fpm start \
 && service php7.0-fpm restart \
 && sleep infinity
