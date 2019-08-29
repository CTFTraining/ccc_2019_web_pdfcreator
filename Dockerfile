FROM ctftraining/base_image_nginx_php_56
LABEL Author="Tiaonmmn.ZMZ"
RUN mkdir /var/www/site
ADD files/src/code.tar /var/www/site
COPY files/nginx.conf /etc/nginx/
COPY files/flag.php /var/www/site/
COPY files/flag.sh /flag.sh
RUN chown -R www-data:www-data /var/www/site/ && chmod +x /flag.sh
