FROM  ubuntu:latest

RUN apt update -y
RUN apt install apache2 -y
RUN apt install apache2-utils -y
RUN apt install  zip -y
RUN apt install  unzip -y

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .

RUN rm -rf photogenic photogenic.zip

CMD [“apache2ctl”, “-D”, “FOREGROUND”]

EXPOSE 80  
