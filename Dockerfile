FROM php:7.2-apache
RUN apt update
RUN apt install -y python3-dev graphviz-dev graphviz python3 python3-pip gcc g++ cron unzip
RUN pip3 install pygraphviz
WORKDIR /var/www/html
RUN rm -rf *
COPY ./ /var/www/html
RUN mv web/index.php .
RUN mkdir tmp
RUN chown -R www-data:www-data /var/www/html
WORKDIR /tmp
RUN echo '*/5 * * * * rm -rf /var/www/html/tmp/*' | tee cron.conf
RUN crontab /tmp/cron.conf
ENTRYPOINT ["bash","/var/www/html/web/startup.sh"]
EXPOSE 80