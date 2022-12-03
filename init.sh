#!/bin/bash

pip install virtualenv > /dev/null
printf "%s\n" "virtualenv installed successfully"

printf "%s\n" "."  
printf "%s\n" ".."
printf "%s\n" "..."
virtualenv ENV > /dev/null
printf "%s\n" "virtual environment created"

if find ENV > /dev/null
then 
    source ENV/scripts/activate > /dev/null
    printf "%s\n" "virtual environment activated"
    printf "%s\n" "installing packages . . ."
    cd app;
    pip install -r requirements.txt > /dev/null;
    printf "%s\n" "packages installed"
else
    printf "%s\n" "virtual environment not created :("
    virtualenv ENV > /dev/null
    printf "%s\n" "virtual environment created :)"
    source ENV/scripts/activate /dev/null
    cd app;
    pip install -r requirements.txt > /dev/null;
fi
cd ..;
printf "%s\n" "now installing node packages . . ."
cd frontend; 
npm i > /dev/null;
printf "%s\n" "DONE!"
printf "%s\n" "Basic template ready, for your project"

