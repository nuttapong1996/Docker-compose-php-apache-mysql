#ติดตั้ง PHP 8.0 พร้อม Apache
FROM php:8.0-apache

#เซ็ตพื้นที่ทำงาน
WORKDIR /php/htdocs

#เปิดการใช้งาน .httaccess
RUN a2enmod rewrite

#เปิดการใช้งาน Database Driver Mysqli
RUN docker-php-ext-install mysqli 
# เปิดการใช้งาน Database Driver PDO mysql
RUN docker-php-ext-install pdo pdo_mysql
#เปิดการใช้งาน Mysqli
RUN docker-php-ext-enable mysqli 
# เปิดการใช้งาน Database Driver pgsql และ pdo pgsql
RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql pgsql

# COPY ไฟล์ทั้งหมดไป 
# COPY . /var/www/html
