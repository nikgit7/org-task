FROM ubuntu 
RUN apt update 
RUN apt install apache2 -y 

RUN echo "This is Dev2 v-1.4" > /var/www/html/index.html
RUN apt clean 
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
