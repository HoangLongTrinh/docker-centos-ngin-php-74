FROM egyptianbman/docker-centos-nginx-php

# RUN rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
# RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum-config-manager -y install yum-utils
RUN yum-config-manager --disable 'remi-php*' -y
RUN yum-config-manager --enable remi-php74 -y
RUN yum remove php-common php-cli -y
RUN yum update -y
RUN yum -y install composer && composer global require "hirak/prestissimo:^0.3"
RUN yum-config-manager -y install php-xdebug
RUN echo "xdebug.mode=coverage" >> /etc/php.ini
COPY vhost.conf /etc/nginx/conf.d/vhost.conf

WORKDIR /app
