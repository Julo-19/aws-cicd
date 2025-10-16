#!/usr/bin/bash

# Activer l'environnement virtuel
source /home/ubuntu/env/bin/activate

# Se placer dans le bon répertoire du projet (où se trouve manage.py)
cd /home/ubuntu/project-pipeline-aws

# Modifier le fichier settings.py pour ajouter l'IP publique (optionnel si déjà fait)
sed -i 's/ALLOWED_HOSTS = .*/ALLOWED_HOSTS = ["13.48.149.227", "*"]/' aws_cicd/settings.py

# Appliquer les migrations
echo "Applying Django migrations..."
python3 manage.py makemigrations
python3 manage.py migrate

# Collecter les fichiers statiques
echo "Collecting static files..."
python3 manage.py collectstatic --noinput

# Redémarrer les services
echo "Restarting Gunicorn and Nginx..."
sudo systemctl daemon-reload
sudo systemctl restart gunicorn
sudo systemctl restart nginx

# Vérifier les statuts
sudo systemctl status gunicorn --no-pager
sudo systemctl status nginx --no-pager
