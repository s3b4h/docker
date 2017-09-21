# Each instruction in this file generates a new layer that gets pushed to your local image cache
#
 
#
# Lines preceeded by # are regarded as comments and ignored
#
 
#
# The line below states we will base our new image on the Latest Official Ubuntu 
FROM centos:6.6
 
#
# Identify the maintainer of an image
MAINTAINER "s3b4h@terra.com.br"
 
#
# Instalação de pacotes
RUN yum install -y php
RUN yum install -y httpd php55w-cli-5.5.35-1.w6.x86_64, php55w-pdo-5.5.35-1.w6.x86_64, php55w-opcache-5.5.35-1.w6.x86_64, php55w-gd-5.5.35-1.w6.x86_64, php55w-odbc-5.5.35-1.w6.x86_64, php55w-common-5.5.35-1.w6.x86_64, php55w-5.5.35-1.w6.x86_64, php55w-mysql-5.5.35-1.w6.x86_64
 
#
# Expose port 80
EXPOSE 80
 
#
# Last is the actual command to start up apache within our Container
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]