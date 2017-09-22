FROM centos
MAINTAINER Sam
RUN yum install httpd -y
RUN echo 'dockerapp1 v1' > /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
