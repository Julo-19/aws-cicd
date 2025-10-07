
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/project-pipeline-aws/nginx/nginx.conf /etc/nginx/sites-available/space_dym
sudo ln -s /etc/nginx/sites-available/aws_cicd /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/aws_cicd /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx

