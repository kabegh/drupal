From nginx:1.17.8-alpine

RUN chown -R nginx:root /var/cache/nginx \
    && chmod -R g+w /var/cache/nginx

RUN chown -R nginx:root /var/run \
    && chmod -R g+w /var/run

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080
