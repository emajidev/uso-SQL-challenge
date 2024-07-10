# Ejecutar Scripts SQL en PostgreSQL

## Requisitos

- PostgreSQL instalado en tu sistema
- Acceso a la herramienta de línea de comandos de PostgreSQL (`psql`) o pgAdmin (una interfaz gráfica para PostgreSQL)

## 1. Usando la Terminal (psql)

### Paso 1: Abrir la Terminal

Abre tu terminal o línea de comandos.

### Paso 2: Conectarse a PostgreSQL

Usa el siguiente comando para conectarte a tu base de datos PostgreSQL. Reemplaza `nombre_usuario`, `nombre_base_de_datos` y `/path/archivo.sql` con tu nombre de usuario de PostgreSQL, el nombre de la base de datos y la ruta a tu archivo SQL, respectivamente.

```bash
psql -U nombre_usuario -d nombre_base_de_datos -f create-tables.sql
```
Una vez creadas las tablas ya podemos hacer insert de la data para ello de igual forma ejecutamos lo siguiente:

```bash
psql -U nombre_usuario -d nombre_base_de_datos -f insert-tables.sql
```

### ALTERNATIVO: PgAdmin
En el modo grafico de pgAdmin nos brinda la forma de ejecucion de script en nuestra bd, por lo que es mas facil copiar el contenido del script y ejecutarlos.


### CONSULTAS
De igual forma recomiendo hacer ejecucion de cada consulta desde pgAdming de lo contrario aplicar en consola de esta forma:

consulta-1
```bash
psql -U nombre_usuario -d nombre_base_de_datos -f ./consultas/consulta-1.sql
```
consulta-2
```bash
psql -U nombre_usuario -d nombre_base_de_datos -f ./consultas/consulta-2.sql
```
consulta-3
```bash
psql -U nombre_usuario -d nombre_base_de_datos -f ./consultas/consulta-3.sql
```
