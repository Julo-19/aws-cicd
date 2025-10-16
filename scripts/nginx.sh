#!/usr/bin/bash

# Recharge les unités systemd (si nécessaire)
sudo systemctl daemon-reload

# Supprime le site par défaut
sudo rm -f /etc/nginx/sites-enabled/default

# Copie le fichier Nginx depuis le repo vers sites-available
sudo cp /home/ubuntu/project-pipeline-aws/nginx/aws_cicd /etc/nginx/sites-available/aws_cicd

# Active le site
sudo ln -sf /etc/nginx/sites-available/aws_cicd /etc/nginx/sites-enabled/

# Teste la configuration Nginx
sudo nginx -t

# Redémarre Nginx
sudo systemctl restart nginx
