#!/bin/bash

# Install dependencies
python -m pip install -r requirements.txt

#migrations
python manage.py makemigrations --noinput
python manage.py migrate --noinput


# Collect static files
python manage.py collectstatic --noinput clear
