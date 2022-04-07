FROM centos:7
MAINTAINER himogyal81@gmail.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/jd.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip jd.zip
RUN cp -rvf jd/* .
RUN rm -rf jd jd.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
