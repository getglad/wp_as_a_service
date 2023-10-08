FROM wordpress:php8.2-apache as step1

WORKDIR /usr/src/wordpress

RUN apt update && apt install -y unzip

RUN mkdir ./wp-content/plugins/s3-uploads

RUN curl -L -O https://github.com/humanmade/S3-Uploads/releases/download/3.0.7/manual-install.zip

RUN unzip -d ./wp-content/plugins/s3-uploads ./manual-install.zip

RUN cp -s wp-config-docker.php wp-config.php

COPY ./docker/plugins.sh ./plugins.sh

RUN chmod a+rx ./plugins.sh

RUN ./plugins.sh

FROM wordpress:php8.2-apache

WORKDIR /usr/src/wordpress

RUN apt update && apt -y full-upgrade

RUN set -eux; \
    find /etc/apache2 -name '*.conf' -type f -exec sed -ri -e "s!/var/www/html!$PWD!g" -e "s!Directory /var/www/!Directory $PWD!g" '{}' +; \
    cp -s wp-config-docker.php wp-config.php

COPY --from=step1 /usr/src/wordpress/wp-content/plugins/ wp-content/plugins/

RUN mkdir ./wp-content/mu-plugins

COPY ./docker/s3-endpoint.php wp-content/mu-plugins/s3-endpoint.php

RUN chown -R www-data:www-data /usr/src/wordpress
