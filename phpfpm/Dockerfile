FROM php:5.6-fpm

# mysqld.sock at /var/run/mysqld/mysqld.sock
RUN docker-php-ext-install mysqli
ADD ext-mysqli.ini /usr/local/etc/php/conf.d/ext-mysqli.ini

# Use socket at /var/run/php5-fpm/php5-fpm.sock instead of on port 9000
RUN mkdir /var/run/php5-fpm
ADD php-fpm.conf /usr/local/etc/php-fpm.conf

CMD ["php-fpm"]
