import os
import subprocess

# Verificar si el archivo de volcado existe
dump_file = 'superset_dump.sql'
if not os.path.isfile(dump_file):
    print(f"El archivo {dump_file} no se encuentra. Asegúrate de que esté en el mismo directorio que este script.")
    exit(1)

# Restaurar el volcado de la base de datos PostgreSQL
command = f"cat {dump_file} | docker exec -i superset_postgres psql -U superset -d superset_db"
subprocess.run(command, shell=True, check=True)

print("La base de datos se ha restaurado correctamente.")
