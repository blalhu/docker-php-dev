FROM pelso/php:7.2

RUN apt update \
 && apt install -y \
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

CMD service php7.2-fpm start \
 && service php7.2-fpm restart \
 && sleep infinity
