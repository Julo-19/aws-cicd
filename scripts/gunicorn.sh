#!/usr/bin/bash

# Copier les fichiers systemd
sudo cp /home/ubuntu/project-pipeline-aws/gunicorn/gunicorn.socket /etc/systemd/system/gunicorn.socket
sudo cp /home/ubuntu/project-pipeline-aws/gunicorn/gunicorn.service /etc/systemd/system/gunicorn.service

# Recharger systemd pour prendre en compte les changements
sudo systemctl daemon-reload

# Activer et démarrer le socket et le service
sudo systemctl enable gunicorn.socket
sudo systemctl start gunicorn.socket

sudo systemctl enable gunicorn.service
sudo systemctl restart gunicorn.service
