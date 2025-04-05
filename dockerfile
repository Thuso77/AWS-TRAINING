FROM centos:latest
LABEL maintainer="Cloudwebsite"
RUN yum -y install nginx
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-D", "FOREGROUND"]
EXPOSE 80
