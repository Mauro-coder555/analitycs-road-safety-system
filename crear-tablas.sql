CREATE TABLE IF NOT EXISTS homicidios (
    ID SERIAL PRIMARY KEY,
    N_VICTIMAS INT,
    FECHA DATE,
    HORA TIME,
    TIPO_DE_CALLE VARCHAR(255),
    CALLE VARCHAR(255),
    ALTURA VARCHAR(255),
    CRUCE VARCHAR(255),
    DIRECCION_NORMALIZADA VARCHAR(255),
    COMUNA INT,
    POS_X VARCHAR(255),
    POS_Y VARCHAR(255),
    VICTIMA VARCHAR(255),
    ACUSADO VARCHAR(255),
    ROL VARCHAR(255),
    SEXO VARCHAR(255),
    EDAD VARCHAR(255),
    PARTICIPANTE_A VARCHAR(255),
    PARTICIPANTE_B VARCHAR(255),
    RANGO_ETARIO VARCHAR(255),
    ENCRUCIJADA BOOLEAN,
    FECHA_HORA TIMESTAMP
);

CREATE TABLE IF NOT EXISTS kpi_1 (
    HOMICIDIOS INT,
    TASA_HOMICIDIOS FLOAT,
    TASA_HOMICIDIOS_ANTERIOR FLOAT,
    VARIACION FLOAT,
    SEMESTRE INT,
    ANO INT
);

CREATE TABLE IF NOT EXISTS kpi_2 (
    ANO INT,
    N_VICTIMAS INT,
    N_VICTIMAS_ANTERIOR INT,
    VARIACION_VICTIMAS_MOTO FLOAT
);

CREATE TABLE IF NOT EXISTS kpi_3 (
    PERIODO VARCHAR(255),
    CONCENTRACION_PORC FLOAT
);
