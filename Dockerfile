FROM centos
MAINTAINER Sam
RUN yum install httpd -y
RUN yum install mysql -y
RUN echo 'dockerapp1 v2 -> v3' > /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
