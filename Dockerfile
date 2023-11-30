FROM centos:latest
MAINTAINER anil.tariyal@gmail.com
RUN yum install httpd zip unzip -y 
ADD  http://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
