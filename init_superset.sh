#!/bin/bash
pip install gevent
superset db upgrade
superset init

EXPORT_PATH="/app/superset_exports"
USERNAME="admin"  # Cambia 'admin' por el nombre de usuario correcto

if [ -f "$EXPORT_PATH" ]; then
    echo "Importando dashboards desde $EXPORT_PATH..."
    superset import-dashboards -p "$EXPORT_PATH" -u "$USERNAME"
    if [ $? -eq 0 ]; then
        echo "Dashboard importado exitosamente."
    else
        echo "Error al importar el dashboard."
    fi
else
    echo "Archivo de exportación $EXPORT_PATH no encontrado."
fi

gunicorn -w 2 -k gevent --timeout 60 -b 0.0.0.0:8088 "superset.app:create_app()"
