#!/bin/bash
mkdir django
cd django
python3 -m venv env
source env/bin/activate
pip install django
django-admin startproject arduan .
django-admin startapp books
python3 manage.py runserver


