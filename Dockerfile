FROM pelso/php:5.6

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

CMD service php5.6-fpm start \
 && service php5.6-fpm restart \
 && sleep infinity
