#!/bin/bash
mkdir dj-proj && cd dj-proj
python3 -m venv env 
source env/bin/activate
pip install django
django-admin startproject arduan .
django-admin startapp books
python manage.py migrate
python3 manage.py createsuperuser
python3 manage.py runserver


