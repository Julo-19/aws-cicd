#!/usr/bin/bash

sudo systemctl daemon-reload
sudo cp /home/ubuntu/project-pipeline-aws/systemd/gunicorn.socket /etc/systemd/system/gunicorn.socket
sudo cp /home/ubuntu/project-pipeline-aws/systemd/gunicorn.service /etc/systemd/system/gunicorn.service

sudo systemctl enable gunicorn.socket
sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.service
sudo systemctl start gunicorn.service
