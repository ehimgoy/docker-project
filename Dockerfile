FROM centos:7
MAINTAINER himogyal81@gmail.com
RUN yum update -y
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/resto.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip resto.zip
RUN cp -rvf resto/* .
RUN rm -rf resto resto.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
