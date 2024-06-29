FROM   debian
RUN    apt update
RUN    apt install apache2 -y
COPY   ./index.html /var/www/index.html
EXPOSE 80
CMD	["apache2ctl","-D","FOREGROUND"]
