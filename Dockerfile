FROM  centos:latest
MAINTAINER noro.lavandyan@gmail.com

RUN  yum -y update
RUN sudo yum install -y httpd 
RUN sudo yum install -y zip
RUN sudo yum install -y unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

WORKDIR /var/www/html/
RUN sudo unzip photogenic.zip
RUN sudo cp -rvf photogenic/* .

RUN sudo rm -rf photogenic photogenic.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80  
