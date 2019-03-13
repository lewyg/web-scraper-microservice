#!/bin/bash

# todo - use a loop
echo 'Waiting for database...'
sleep 10

PYTHON=python

${PYTHON} manage.py db init
${PYTHON} manage.py db migrate
${PYTHON} manage.py db upgrade

${PYTHON} manage.py runserver -h 0.0.0.0
