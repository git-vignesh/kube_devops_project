FROM centos:latest
MAINTAINER Muthuvignesh92@outlook.com
RUN yum install -y httpd 
    zip\
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN CP -rvf photogenic/*
RUN RM -rm -rf photogenic photogenic.zip
CMD [ "/usr/sbin/httpd","-D","FOREGROUND" ]
EXPOSE 80 22 443
