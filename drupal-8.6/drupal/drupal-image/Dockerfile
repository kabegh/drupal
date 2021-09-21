FROM drupal:8.6.18

RUN  chown -R  www-data:root /var/www/html \
     && chmod -R g+w /var/www/html

RUN  cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php \
     && chmod -R g+w /var/www/html/sites/default/settings.php


COPY ./ports.conf /etc/apache2/ports.conf

COPY ./000-default.conf /etc/apache2/sites-enabled/000-default.conf

EXPOSE 30080
