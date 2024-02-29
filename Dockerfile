#ติดตั้ง PHP 8.0 พร้อม Apache
FROM php:8.0-apache

#เซ็ตพื้นที่ทำงาน
WORKDIR /php/htdocs

#เปิดการใช้งาน .httaccess
RUN a2enmod rewrite

#ติดตั้ง Mysqli 
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
#ติดตั้ง Extension ของ Postgrest
RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql pgsql
