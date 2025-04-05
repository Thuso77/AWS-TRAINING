# Use CentOS as the base image
FROM centos:latest

# Label for your container
LABEL maintainer="Cloudwebsite"

# Install NGINX
RUN yum -y install nginx

# Copy your static HTML file into the NGINX directory
COPY index.html /usr/share/nginx/html/index.html

# Change the default NGINX port from 80 to 8080
RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/nginx.conf

# Expose port 8080 (App Runner default)
EXPOSE 8080

# Start NGINX in the foreground
ENTRYPOINT ["/usr/sbin/nginx", "-D", "FOREGROUND"]
