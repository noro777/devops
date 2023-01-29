FROM ubuntu
MAINTAINER norayr.lavandyan@gmail.com


RUN apt-get -y update && apt-get -y install nginx
RUN apt-get install -y zip
RUN apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cycle.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip cycle.zip
#RUN cp -rvf cycle/* .
RUN rm -rf cycle cycle.zip
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80/tcp