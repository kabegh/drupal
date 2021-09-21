#! /bin/bash

# create nginx deployment
oc apply -f ./nginx/configmap-sitesconf.yaml
oc apply -f ./nginx/nginx.yaml


# create drupal deployment
oc apply -f ./drupal/drupal.yaml


# create postgres deployment
oc apply -f ./postgres/postgres.yaml


# create service
oc expose deployment postgresql-deployment --name=postgresql-service
oc expose deployment drupal-deployment --name=drupal-service --port=80 --target-port=drupal-port
oc expose deployment nginx-deployment --name=nginx-service


# create route
oc expose service nginx-service --name=nginx-route


# show url
oc describe route nginx-route | grep "Requested Host:"

