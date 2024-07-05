import pandas as pd
from sqlalchemy import create_engine, Date, Time, text

# Conexión a PostgreSQL
engine = create_engine('postgresql+psycopg2://superset:superset@superset_postgres:5432/superset_db')

# Función para verificar si la tabla existe en la base de datos
def tabla_existe(tabla):
    with engine.connect() as connection:
        query = text(f"SELECT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = '{tabla}');")
        result = connection.execute(query)
        return result.fetchone()[0]

# Función para ejecutar el script SQL si la tabla no existe
def ejecutar_script_sql_si_no_existe(script_file):
    tabla = script_file.split('.')[0].upper()  # Obtener el nombre de la tabla del nombre del archivo
    if not tabla_existe(tabla):
        with open(script_file, 'r') as file:
            script = file.read()
            with engine.connect() as connection:
                connection.execute(text(script))  # Convertir el script a objeto text de SQLAlchemy
                print(f"Tabla {tabla} creada exitosamente.")
    else:
        print(f"La tabla {tabla} ya existe en la base de datos.")




ejecutar_script_sql_si_no_existe('/app/crear-tablas.sql')

# Cargar datos de homicidios
homicidios_df = pd.read_csv('/app/datos_procesados/homicidios_clean.csv')


# Convierte las columnas al tipo de datos adecuado
homicidios_df['FECHA'] = pd.to_datetime(homicidios_df['FECHA']).dt.date
homicidios_df['HORA'] = pd.to_datetime(homicidios_df['HORA'], format='%H:%M:%S').dt.time

# Verifica los tipos de datos
print(homicidios_df.dtypes)

# Cargar datos en la tabla homicidios, especificando los tipos de columna
homicidios_df.to_sql('homicidios', engine, if_exists='replace', index=False, 
                     dtype={'FECHA': Date(), 'HORA': Time()})
# Cargar datos de KPI 1
kpi_1_df = pd.read_csv('/app/datos_procesados/KPI\'S/KPI_1.csv')
kpi_1_df.to_sql('kpi_1', engine, if_exists='replace', index=False)

# Cargar datos de KPI 2
kpi_2_df = pd.read_csv('/app/datos_procesados/KPI\'S/KPI_2.csv')
kpi_2_df.to_sql('kpi_2', engine, if_exists='replace', index=False)

# Cargar datos de KPI 3
kpi_3_df = pd.read_csv('/app/datos_procesados/KPI\'S/KPI_3.csv')
kpi_3_df.to_sql('kpi_3', engine, if_exists='replace', index=False)

print("Datos cargados exitosamente")
