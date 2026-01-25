# Use official Red Hat UBI 8 base image
FROM registry.access.redhat.com/ubi8/ubi
# Install Git and httpd 
RUN dnf install -y git httpd && dnf clean all
# Set working directory (optional)
WORKDIR /var/www/html

# Expose Apache port
EXPOSE 80

# Start Apache in foreground so container keeps running
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

