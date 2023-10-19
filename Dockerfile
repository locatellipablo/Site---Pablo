FROM debian

RUN apt-get update; \

	apt-get install wget git apache2 -yq



COPY index.html /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
