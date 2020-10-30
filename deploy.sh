#! /bin/bash
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose pull && sudo -E DB_PASSWORD=${DB_PASSWORD} docker-compose up -d
