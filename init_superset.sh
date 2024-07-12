#!/bin/bash
pip install gevent
superset db upgrade
superset init

# Importar dashboards
echo "Importando dashboards ..."
superset import-dashboards -p /app/superset_exports/dashboards/OMSV.zip -u admin

gunicorn -w 2 -k gevent --timeout 60 -b 0.0.0.0:8088 "superset.app:create_app()"
