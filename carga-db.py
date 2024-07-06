import pandas as pd
from sqlalchemy import create_engine, Date, Time, text

# Conexión a PostgreSQL
engine = create_engine('postgresql+psycopg2://superset:superset@superset_postgres:5432/superset_db')

# Función para ejecutar el script SQL
def ejecutar_script_sql(script_file):
    with open(script_file, 'r') as file:
        script = file.read()
        with engine.connect() as connection:
            connection.execute(text(script))
            print("Tablas iniciadas exitosamente.")

ejecutar_script_sql('/app/crear-tablas.sql')


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
