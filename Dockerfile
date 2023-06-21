FROM php:7.2.34-apache
WORKDIR /
ADD https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.buster_arm64.deb /
RUN apt update; \
    apt install -y --no-install-recommends /wkhtmltox_0.12.6-1.buster_arm64.deb \
    iputils-ping \
    netcat \
    nano
RUN docker-php-ext-install mysqli \
    pdo \
    shmop \
    pdo_mysql
RUN a2enmod rewrite headers
COPY --chown=www-data:www-data root /
ADD --chown=www-data:www-data v9.tar.gz /var/www/html
ADD https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-english.tar.gz /
RUN tar xzf /phpMyAdmin-5.2.1-english.tar.gz -C /var/www/html/phpMyAdmin --strip-components=1
