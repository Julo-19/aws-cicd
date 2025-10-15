#!/usr/bin/bash

# Se placer dans le bon répertoire
cd /home/ubuntu/project-space/aws_cicd

# Modifier settings.py
sed -i 's/\[]/\["13.48.149.227"]/' settings.py

# Django Migrations
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput

# Redémarrage des services
sudo systemctl restart gunicorn
sudo systemctl restart nginx

# Vérification du statut
sudo systemctl status gunicorn
sudo systemctl status nginx
