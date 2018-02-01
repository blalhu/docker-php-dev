FROM pelso/php:7.1

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

CMD service php7.1-fpm start \
 && service php7.1-fpm restart \
 && sleep infinity
