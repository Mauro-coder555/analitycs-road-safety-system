import pandas as pd
from sqlalchemy import create_engine, Date, Time

# Conexión a PostgreSQL
engine = create_engine('postgresql+psycopg2://superset:superset@superset_postgres:5432/superset_db')

# Cargar datos de homicidios
homicidios_df = pd.read_csv('datos procesados/homicidios_clean.csv')


# Convierte las columnas al tipo de datos adecuado
homicidios_df['FECHA'] = pd.to_datetime(homicidios_df['FECHA']).dt.date
homicidios_df['HORA'] = pd.to_datetime(homicidios_df['HORA'], format='%H:%M:%S').dt.time

# Verifica los tipos de datos
print(df.dtypes)

# Cargar datos en la tabla homicidios, especificando los tipos de columna
homicidios_df.to_sql('homicidios', engine, if_exists='replace', index=False, 
                     dtype={'FECHA': Date(), 'HORA': Time()})
# Cargar datos de KPI 1
kpi_1_df = pd.read_csv('datos procesados/KPI\'S/KPI_1.csv')
kpi_1_df.to_sql('kpi_1', engine, if_exists='replace', index=False)

# Cargar datos de KPI 2
kpi_2_df = pd.read_csv('datos procesados/KPI\'S/KPI_2.csv')
kpi_2_df.to_sql('kpi_2', engine, if_exists='replace', index=False)

# Cargar datos de KPI 3
kpi_3_df = pd.read_csv('datos procesados/KPI\'S/KPI_3.csv')
kpi_3_df.to_sql('kpi_3', engine, if_exists='replace', index=False)

print("Datos cargados exitosamente")
