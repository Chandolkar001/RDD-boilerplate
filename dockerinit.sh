#!/bin/bash

printf "%s\n" "Docker is building the image . . ."
docker-compose build 
printf "%s\n" "Docker is staring the containers . . ."
docker-compose up -d 
printf "%s\n" "The site is up on Docker containers!"

printf "%s\n" "Check localhost:3000 for react-frontend page"
printf "%s\n" "Check localhost:8000 for backend-server"