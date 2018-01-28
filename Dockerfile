FROM pelso/php:5.6

RUN apt update \
 && apt install -y \
    php5.6-xdebug \
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

COPY xdebug.ini /etc/php/5.6/mods-available/xdebug.ini

CMD service php5.6-fpm start \
 && service php5.6-fpm restart \
 && sleep infinity
