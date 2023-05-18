FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y 

RUN echo "This is rv v-1.2" > /var/www/html/index.html
RUN apt clean 
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
