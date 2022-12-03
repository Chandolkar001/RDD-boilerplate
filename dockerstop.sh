#!/bin/bash

printf "%s\n" "Stopping the containers . . . "

docker-compose down

printf "%s\n" "Site is down"