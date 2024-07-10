# SINIESTROS-VIALES-DA

<image src="imgs/seguridad vial.png" alt="img seguridad vial">

Proyecto de Análisis de Datos para el Centro de Estudios (OMSV) en Buenos Aires, Argentina.

Este proyecto tiene como objetivo realizar un análisis exploratorio de los datos proporcionados por el Centro de Estudios de Accidentes de Tráfico en Buenos Aires, Argentina. Además, se requiere un panel interactivo para analizar los datos con mayor profundidad y extraer ideas valiosas y recomendaciones para la entidad OMSV. Este análisis podría influir significativamente en el proceso de toma de decisiones para el Gobierno de la Ciudad de Buenos Aires.

## Tabla de Contenido:

- [Road-Accidents-DA](#road-accidents-da)
  - [Tecnologías](#tecnologías)
  - [Archivos del Proyecto](#archivos-del-proyecto)
  - [Conjuntos de Datos](#conjuntos-de-datos)
    - [Metadatos Descriptivos](#metadatos-descriptivos)
      - [Variables Cuantitativas](#variables-cuantitativas)
      - [Variables Cualitativas](#variables-cualitativas)
    - [Manejo de Valores Nulos](#manejo-de-valores-nulos)
  - [Estructuración del Análisis Exploratorio de Datos (EDA)](#estructuración-del-análisis-exploratorio-de-datos-eda)
  - [Conclusiones Finales](#conclusiones-finales)


## Tecnologías

![Python](https://img.shields.io/badge/Python-%23005B60?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-%23005B60?style=for-the-badge&logo=pandas&logoColor=white)
![Numpy](https://img.shields.io/badge/Numpy-%23005B60?style=for-the-badge&logo=numpy&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-%23005B60?style=for-the-badge&logo=plotly&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-%23005B60?style=for-the-badge&logo=jupyter&logoColor=white)
![Power BI](https://img.shields.io/badge/power%20bi-%23005B60?style=for-the-badge&logo=power%20bi&logoColor=white)
![git](https://img.shields.io/badge/git-%23005B60?style=for-the-badge&logo=git&logoColor=white)

## Archivos del proyecto

Para obtener información relacionada con los archivos, tipos y descripciones que componen este proyecto, consulte la siguiente tabla:


| ID | Nombre        | Tipo   | Descripción                                                          |
|----|---------------|--------|----------------------------------------------------------------------|
| 1  | datos originales      | .xlsx  | Contiene datos crudos sobre accidentes de tráfico proporcionados por el OMSV |
| 2  | datos procesados  | .csv/.shp   | Contiene un archivo csv con los datos limpios |
| 3  | .gitignore    | .git   | Contiene archivos ignorados  |
| 4  | gráficos        | .png   | Contiene imágenes de todos los gráficos utilizados en el análisis EDA |
| 5 | src           | .png   | Contiene imágenes utilizadas como fuente para este archivo readme y para el cuaderno EDA |
| 6  | EDA           | .ipynb | Contiene todo el proceso de Análisis Exploratorio de Datos detallado con comentarios en markdown y paso a paso |
| 7  | ETL  | .ipynb   | Contiene todo el proceso de extracción, limpieza y carga de datps con comentarios en markdown y paso a paso          |
| 8  | imgs  | .png   | Contiene imagenes para la parte visual del readme          |
| 9  | KPI'S  | .csv   | Contiene archivos csv asociados a los KPI'S tratados          |


## Datasets

Para este proyecto se utilizó un conjunto de datos con 2 tablas relacionadas. El conjunto de datos es un archivo XLSX con la siguiente estructura de hoja:

* Homicidios.xlsx
  * Hechos
  * Victimas
  * Diccionario Hechos
  * Diccionario Victimas


Las hojas 'Hechos' y 'Víctimas' contienen la información principal sobre 696/717 accidentes de tráfico, respectivamente, ocurridos entre los años 2016 a 2021. Las hojas restantes contienen información sobre los metadatos descriptivos. En la siguiente sección, se mostrarán en detalle los metadatos descriptivos del conjunto de datos.

Mas información: https://data.buenosaires.gob.ar/dataset/victimas-siniestros-viales

### Metadatos Descriptivos

Por favor, consulta la siguiente tabla para obtener los metadatos descriptivos del conjunto de datos:

## Tabla de Hechos

| VARIABLE      | DESCRIPCION                                            | DTYPE            | CLASE         | CATEGORIA   |
|---------------|-------------------------------------------------------|------------------|---------------|-------------|
| ID            | Identificador único del siniestro                    | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| N_VICTIMAS    | Cantidad de víctimas                                  | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| FECHA         | Fecha en formato dd/mm/aaaa                            | [&lt;class 'str'&gt;] | Categórica | Ordinal     |
| AAAA          | Año                                                   | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| MM            | Mes                                                   | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| DD            | Día del mes                                           | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| HORA          | Hora del siniestro                                    | [&lt;class 'str'&gt;] | Categórica | Ordinal     |
| HH            | Franja horaria entera                                 | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| LUGAR         | Dirección del hecho                                   | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| TIPO_CALLE    | Tipo de arteria. Para intersecciones se clasifica... | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| CALLE         | Nombre de la arteria donde se produjo el hecho        | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| ALTURA        | Altura de la arteria donde se produjo el hecho        | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| CRUCE         | Cruce en caso de que sea una encrucijada              | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| DIRECCION     | Dirección en formato normalizado USIG                | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| COMUNA        | Comuna de la ciudad (1 a 15)                          | [&lt;class 'int'&gt;] | Categórica | Nominal     |
| XY_(CABA)     | Geocodificación plana                                 | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| POS_X         | Longitud con separador punto. WGS84                  | [&lt;class 'str'&gt;] | Cuantitativa | Continua    |
| POS_Y         | Latitud con separador punto. WGS84                   | [&lt;class 'str'&gt;] | Cuantitativa | Continua    |
| PARTICIPANTES | Conjunción de víctima y acusado                      | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| VICTIMA       | Vehículo del fallecido, o bien peatón/a.              | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| ACUSADO       | Vehículo del acusado/a del hecho, sin implicar...    | [&lt;class 'str'&gt;] | Categórica | Nominal     |


### Variables Cuantitativas

Por favor, consulta la siguiente tabla para obtener las variables cuantitativas del conjunto de datos:

| VARIABLE      | DESCRIPCION                                            | DTYPE            | CLASE         | CATEGORIA   |
|---------------|-------------------------------------------------------|------------------|---------------|-------------|
| N_VICTIMAS    | Cantidad de víctimas                                  | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| AAAA          | Año                                                   | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| MM            | Mes                                                   | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| DD            | Día del mes                                           | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| HH            | Franja horaria entera                                 | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| ALTURA        | Altura de la arteria donde se produjo el hecho        | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| POS_X         | Longitud con separador punto. WGS84                  | [&lt;class 'str'&gt;] | Cuantitativa | Continua    |
| POS_Y         | Latitud con separador punto. WGS84                   | [&lt;class 'str'&gt;] | Cuantitativa | Continua    |


### Variables Cualitativas

Por favor, consulta la siguiente tabla para obtener las variables cualitativas del conjunto de datos:

| VARIABLE      | DESCRIPCION                                            | DTYPE            | CLASE         | CATEGORIA   |
|---------------|-------------------------------------------------------|------------------|---------------|-------------|
| ID            | Identificador único del siniestro                    | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| FECHA         | Fecha en formato dd/mm/aaaa                            | [&lt;class 'str'&gt;] | Categórica | Ordinal     |
| HORA          | Hora del siniestro                                    | [&lt;class 'str'&gt;] | Categórica | Ordinal     |
| LUGAR         | Dirección del hecho                                   | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| TIPO_CALLE    | Tipo de arteria. Para intersecciones se clasif...     | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| CALLE         | Nombre de la arteria donde se produjo el hecho        | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| CRUCE         | Cruce en caso de que sea una encrucijada              | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| DIRECCION     | Dirección en formato normalizado USIG                | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| COMUNA        | Comuna de la ciudad (1 a 15)                          | [&lt;class 'int'&gt;] | Categórica | Nominal     |
| XY_(CABA)     | Geocodificación plana                                 | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| PARTICIPANTES | Conjunción de víctima y acusado                      | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| VICTIMA       | Vehículo del fallecido, o bien peatón/a.              | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| ACUSADO       | Vehículo del acusado/a del hecho, sin implicar...    | [&lt;class 'str'&gt;] | Categórica | Nominal     |



## Tabla de victimas

| Columna               | Descripción                                            | DTYPE            | CLASE         | CATEGORÍA   |
|-----------------------|-------------------------------------------------------|------------------|---------------|-------------|
| ID_hecho              | Identificador único del hecho                          | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| FECHA                 | Fecha en formato 'dd/mm/aaaa'                         | [&lt;class 'datetime.datetime'&gt;] | Categórica | Ordinal     |
| AAAA                  | Año                                                   | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| MM                    | Mes                                                   | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| DD                    | Día del mes                                           | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| ROL                   | Posición relativa al vehículo que presentaba la víctima en el momento del siniestro | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| VICTIMA               | Vehículo que ocupaba quien haya fallecido o se haya lastimado a raíz del hecho, o bien peatón/a. Clasificación agregada del tipo de vehículos. | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| SEXO                  | Sexo informado por fuente policial de la víctima      | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| EDAD                  | Edad de la víctima al momento del siniestro          | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| FECHA_FALLECIMIENTO   | Fecha de fallecimiento de la víctima en formato 'dd/mm/aaaa' | [&lt;class 'str'&gt;] | Categórica | Nominal     |

### Variables cuantitativas

| Columna               | Descripción                                            | DTYPE            | CLASE         | CATEGORÍA   |
|-----------------------|-------------------------------------------------------|------------------|---------------|-------------|
| AAAA                  | Año                                                   | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| MM                    | Mes                                                   | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |
| DD                    | Día del mes                                           | [&lt;class 'int'&gt;] | Cuantitativa | Discreta    |

### Variables cualitativas

| Columna               | Descripción                                            | DTYPE            | CLASE         | CATEGORÍA   |
|-----------------------|-------------------------------------------------------|------------------|---------------|-------------|
| ID_hecho              | Identificador único del hecho                          | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| FECHA                 | Fecha en formato 'dd/mm/aaaa'                         | [&lt;class 'datetime.datetime'&gt;] | Categórica | Ordinal     |
| ROL                   | Posición relativa al vehículo que presentaba la víctima en el momento del siniestro | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| VICTIMA               | Vehículo que ocupaba quien haya fallecido o se haya lastimado a raíz del hecho, o bien peatón/a. Clasificación agregada del tipo de vehículos. | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| SEXO                  | Sexo de la persona informado por fuente policial       | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| EDAD                  | Edad de la persona al momento del siniestro           | [&lt;class 'str'&gt;] | Categórica | Nominal     |
| FECHA_FALLECIMIENTO   | Fecha de fallecimiento de la víctima en formato 'dd/mm/aaaa' | [&lt;class 'str'&gt;] | Categórica | Nominal     |



### Manejo de Valores Nulos

El conjunto de datos etiquetó automáticamente cada valor nulo con la etiqueta 'SD', que significa 'Sin Datos'. Sin embargo, algunas columnas aún tenían valores vacíos que necesitaban ser gestionados. En la siguiente tabla se muestra el estado de los valores nulos para cada columna del conjunto de datos antes de realizar el tratamiento de valores nulos:

| Columna       | No_Nulo_Cant |
|---------------|--------------|
| ID            | 696          |
| N_VICTIMAS    | 696          |
| FECHA         | 696          |
| AAAA          | 696          |
| MM            | 696          |
| DD            | 696          |
| HORA          | 696          |
| HH            | 696          |
| LUGAR         | 696          |
| TIPO_CALLE    | 696          |
| CALLE         | 695          |
| ALTURA        | 129          |
| CRUCE         | 525          |
| DIRECCION     | 688          |
| COMUNA        | 696          |
| XY_(CABA)     | 696          |
| POS_X         | 696          |
| POS_Y         | 696          |
| PARTICIPANTES | 696          |
| VICTIMA       | 696          |
| ACUSADO       | 696          |

Para el proceso de Análisis Exploratorio de Datos (EDA), los valores nulos se imputaron con la etiqueta 'sin datos'. 

Las columnas **ALTURA** y **CRUCE**, a pesar de tener una cantidad mayor de nulos, también se imputaron con 'sin datos' ya que se observó una relación entre ellas.

Esta tabla corresponde al dataset de Hechos. No se observan nulos en el dataset de victimas.

## Conclusiones Finales

* Diciembre fue identificado como el mes más letal con 81 accidentes registrados de 2016 a 2021. El número promedio de accidentes por mes es de 57, lo que indica que diciembre está un 33,33% por encima de la cantidad promedio.
* Las avenidas fueron identificadas como el tipo de carretera más mortífero, superando a calles y autopistas. El 61,7% de las víctimas fallecieron en accidentes de avenidas. Los autos son la principal causa, y peatones y motociclistas son las principales víctimas.
* La cantidad de accidentes disminuyó significativamente de 2018 a 2020 (de 149 a 81 accidentes respectivamente), siendo la COVID-19 la principal causa.
* Los motociclistas son las principales víctimas en accidentes, donde la mayoría comprende un rango de edad entre 25 y 40 años.
* En Buenos Aires, 1,35 ciudadanos por cada 100.000 habitantes sufren un accidente mortal en la carretera.
* Solo el 23,2% de las víctimas eran mujeres.
* En cuanto a los horarios de los siniestros, se puede apreciar que entre las 5:00 – 8:00 horas se registran la mayor cantidad de siniestrabilidad con 125 siniestros viales, asimismo, entre las 16:00 – 20:00 horas se registran 124, siendo los horarios con mayor incidencia de siniestros viales en el periodo 2016-2021.


## Recomendaciones para la Seguridad Vial en CABA: Un Enfoque Analítico para la Mejora Sostenible

Para mitigar la incidencia de incidentes viales en la Ciudad Autónoma de Buenos Aires (CABA), se proponen diversas medidas que buscan abordar distintos aspectos del problema:

Mejora de la Infraestructura Vial:
Se sugiere llevar a cabo una ampliación y optimización de la infraestructura vial. Esto implica la construcción de nuevas calles y avenidas, así como la actualización y perfeccionamiento de las señales de tránsito, tanto horizontal como vertical, para proporcionar una guía clara a los conductores.

Promoción de la Educación Vial:
Se plantea la necesidad de implementar programas de concientización sobre la seguridad vial. Estos podrían incluir campañas educativas dirigidas a la población en general, así como la inclusión de la educación vial como parte integral del currículo escolar. Además, se aboga por la aplicación de sanciones más rigurosas a aquellos conductores que incumplen las normas de tránsito.

Mejora de la Fiscalización del Tránsito:
Se propone reforzar la vigilancia del tránsito mediante un aumento en el número de agentes de tránsito en las calles. Además, se sugiere la implementación de tecnologías avanzadas para la detección de infracciones, lo que contribuiría a una supervisión más efectiva y a la aplicación de medidas correctivas.

Mejoras en Señalización e Iluminación:
Se destaca la importancia de mejorar la señalización y la iluminación en las calles y avenidas principales como medida preventiva clave. Estas mejoras no solo facilitarían la orientación de los conductores, sino que también aumentarían la seguridad general en la vía pública.

Incremento de la Presencia Policial en Zonas Turísticas:
Para abordar específicamente los desafíos en las zonas turísticas, se recomienda aumentar la presencia policial. Esto no solo disuadiría posibles comportamientos delictivos, sino que también contribuiría a una sensación de seguridad para residentes y visitantes.

Fomento del Uso del Transporte Público:
Como medida para reducir la congestión vehicular y promover una movilidad más sostenible, se propone fomentar el uso del transporte público. Esto podría lograrse mediante campañas de concientización, mejoras en la accesibilidad y la eficiencia del transporte público, así como la implementación de incentivos para su utilización.

Integrar estas medidas de manera coordinada y sistémica podría tener un impacto significativo en la reducción de incidentes viales en CABA, abordando tanto aspectos de infraestructura como de comportamiento y conciencia ciudadana.



## Instrucciones para Configurar y Restaurar la Base de Datos de Superset

Sigue estos pasos para configurar tu entorno y restaurar la base de datos de Superset con los gráficos y dashboards preconfigurados.

1. Clona el repositorio:
   ```bash
   git clone https://github.com/Mauro-coder555/analitycs-road-safety-system.git
   cd analitycs-road-safety-system
  ```

2. Levanta los contenedores de Docker:
   ```bash
   docker-compose up -d
   ```

3. Asegúrate de tener Python instalado y ejecuta el script para restaurar el volcado de la base de datos PostgreSQL:
   ```Python
   python restore_db.py
   ```

4. Accede a Superset en tu navegador web:
   http://localhost:8088