FROM pelso/php:7.0

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

RUN wget -O /usr/local/bin/phpunit https://phar.phpunit.de/phpunit-5.phar \
    && chmod +x /usr/local/bin/phpunit

RUN curl -LO https://deployer.org/deployer.phar \
    && mv deployer.phar /usr/local/bin/dep \
    && chmod +x /usr/local/bin/dep

CMD service php7.0-fpm start \
 && service php7.0-fpm restart \
 && sleep infinity
