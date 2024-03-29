FROM egyptianbman/docker-centos-nginx-php:7.1

# RUN rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
# RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum-config-manager --enable remi-php72
RUN yum update -y
RUN yum install -y composer && composer global require "hirak/prestissimo:^0.3"
RUN yum -y install php-xdebug
RUN echo "xdebug.mode=coverage" >> /etc/php.ini
COPY vhost.conf /etc/nginx/conf.d/vhost.conf

WORKDIR /app