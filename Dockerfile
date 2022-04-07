FROM centos:7
MAINTAINER himogyal81@gmail.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page276/jon.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip jon.zip
RUN cp -rvf jon/* .
RUN rm -rf jon jon.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
