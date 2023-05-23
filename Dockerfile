FROM php:7.2.34-apache
WORKDIR /
ADD https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.buster_arm64.deb /
RUN apt update; \
    apt install -y --no-install-recommends /wkhtmltox_0.12.6-1.buster_arm64.deb; \
    docker-php-ext-install mysqli; \
    docker-php-ext-install pdo pdo_mysql; \
    docker-php-ext-configure shmop --enable-shmop; \
    a2enmod rewrite headers
ADD https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-english.tar.gz /
RUN tar xzf /phpMyAdmin-5.2.1-english.tar.gz; \
    mv /phpMyAdmin-5.2.1-english /var/www/html/phpMyAdmin; \
    mkdir --mode=700 /var/www/html/phpMyAdmin/tmp;
COPY root /
ADD v9.tar.gz /var/www/html
RUN chown -R www-data:www-data /var/www/html
