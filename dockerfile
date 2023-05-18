FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y 

RUN echo "this is user1" > /var/www/html/index.html
RUN apt clean 
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
