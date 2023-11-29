#!/usr/bin/env bash

# Fail if any command fails.
set -e

sudo docker compose exec web python manage.py migrate --noinput
sudo docker compose exec web python manage.py load_initial_data
sudo docker compose exec web python manage.py update_index
