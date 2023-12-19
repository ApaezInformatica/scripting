# venv.sh

Crea o elimina un entorno virtual de python con venv

## Si se pasa 'on', realiza las siguientes acciones:
1. Crea un entorno virtual.
2. Activa el entorno virtual.
3. Instala los paquetes desde requirements.txt si existe.

## Si se pasa 'off', realiza las siguientes acciones:
1. Desactiva el entorno virtual.
2. Elimina la carpeta venv.

## Ejecutar el script
* . venv.sh on / source venv.sh on (crea y activa el entorno)
* . venv.sh off / source venv.sh off (desactiva y elimina el entorno)