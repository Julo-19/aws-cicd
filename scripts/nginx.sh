#!/usr/bin/bash

# Supprimer le site par défaut
sudo rm -f /etc/nginx/sites-enabled/default

# Copier la config Nginx
sudo cp /home/ubuntu/project-pipeline-aws/nginx/aws_cicd /etc/nginx/sites-available/aws_cicd
sudo ln -sf /etc/nginx/sites-available/aws_cicd /etc/nginx/sites-enabled/

# Ajouter ubuntu au groupe www-data pour permissions
sudo gpasswd -a ubuntu www-data

# Tester la config et redémarrer Nginx
sudo nginx -t
sudo systemctl restart nginx
