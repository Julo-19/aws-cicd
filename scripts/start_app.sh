#!/usr/bin/bash

# Activer l'environnement virtuel
source /home/ubuntu/env/bin/activate


# Se placer dans le bon répertoire
cd /home/ubuntu/project-pipeline-aws/aws_cicd

# Modifier settings.py (si nécessaire)
sed -i 's/\[]/\["13.48.149.227"]/' settings.py

# Django Migrations
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic --noinput

# Redémarrage des services
sudo systemctl restart gunicorn
sudo systemctl restart nginx

# Vérification du statut
sudo systemctl status gunicorn
sudo systemctl status nginx
