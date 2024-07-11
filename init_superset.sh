#!/bin/bash
pip install gevent
superset db upgrade
superset init
superset import-dashboards -p /app/superset_exports
gunicorn -w 2 -k gevent --timeout 60 -b 0.0.0.0:8088 "superset.app:create_app()"
