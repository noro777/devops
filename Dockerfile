FROM  ubuntu:latest
MAINTAINER noro.lavandyan@gmail.com

RUN sudo apt install -y nginx 
RUN sudo apt install -y zip
RUN sudo apt install -y unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

WORKDIR /var/www/html/

RUN sudo unzip photogenic.zip

RUN sudo cp -rvf photogenic/* .

RUN sudo rm -rf photogenic photogenic.zip

#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80  
