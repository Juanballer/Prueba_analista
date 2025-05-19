
/*para el inicio importe las bases de datos Municipios y Lista_Prestadores_sedes_Acreditados
Despues creo una nueva tabla y con un select selecciono todas las columnas de la base municipios 
y la base de Lista_Prestadores_sedes_Acreditados con un ".*"
despues defino las tablas
con Inner join hago la union de las bases teniendo en cuenta la condicion de la union
con el nombre de los municipios */

CREATE TABLE tabla_final AS

SELECT 
    Municipios.*, 
    Lista_Prestadores_sedes_Acreditados.* 
FROM 
    Municipios

LEFT JOIN 
    Lista_Prestadores_sedes_Acreditados
ON 
    LOWER(TRIM(Municipios.Municipio)) = LOWER(TRIM(Lista_Prestadores_sedes_Acreditados.Muni_nombre))	
/*uno la base de datos descargada en el DANE donde se encuentran el PIB por Municipio	*/

CREATE TABLE tabla_prueba AS

SELECT
    tabla_final.*, 
    PIB_municipio.* 
FROM 
    tabla_final
	
LEFT JOIN 
    PIB_municipio
ON 
    LOWER(TRIM(tabla_final.Municipio)) = LOWER(TRIM(PIB_municipio.Municipio))
