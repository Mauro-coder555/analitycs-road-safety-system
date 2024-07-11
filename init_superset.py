import time
import subprocess

# Esperar unos segundos para asegurarse de que Superset esté listo
time.sleep(30)

# Importar el dashboard
subprocess.run(["superset", "import-dashboards", "-p", "/app/superset_export/OSMV_1.yml"], check=True)
