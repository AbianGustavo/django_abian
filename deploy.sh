#!/bin/bash

ssh abian@74.234.38.215 "
  cd $(dirname $0)
  rm -r travelroad_django
  git clone git@github.com:AbianGustavo/django_abian.git
  mv django_abian travelroad_django
  cd /home/abian/travelroad_django
  source .venv/bin/activate
  pip install -r requirements.txt

  # python manage.py migrate
  # python manage.py collectstatic --no-input

  sudo supervisorctl restart travelroad
"



