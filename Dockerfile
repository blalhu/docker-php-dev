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

COPY composer-installer.sh /home/app/composer-installer.sh
RUN /home/app/composer-installer.sh \
    && rm /home/app/composer-installer.sh

RUN wget -O /usr/local/bin/phpunit https://phar.phpunit.de/phpunit-7.phar \
    && chmod +x /usr/local/bin/phpunit

CMD service php7.2-fpm start \
 && service php7.2-fpm restart \
 && sleep infinity
