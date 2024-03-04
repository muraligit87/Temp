FROM centos:7
RUN yum install httpd -y
EXPOSE 80
VOLUME ["/var/www/html"]
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
