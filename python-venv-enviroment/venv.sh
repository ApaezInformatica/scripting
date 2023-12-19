# Crea o elimina un entorno virtual de python con venv

# - Si se pasa 'on', realiza las siguientes acciones:
#   1. Crea un entorno virtual.
#   2. Activa el entorno virtual.
#   3. Instala los paquetes desde requirements.txt si existe.

# - Si se pasa 'off', realiza las siguientes acciones:
#   1. Desactiva el entorno virtual.
#   2. Elimina la carpeta venv.

# . venv.sh on / source venv.sh on (crea y activa el entorno)
# . venv.sh off / source venv.sh off (desactiva y elimina el entorno)

#!/bin/bash

# Función para crear un entorno virtual
crearEntornoVirtual() {
    virtualenv venv
}

# Función para activar el entorno virtual
activarEntornoVirtual() {
    source ./venv/bin/activate
}

# Función para instalar paquetes desde requirements.txt
instalarPaquetes() {
    if [ -f "requirements.txt" ]; then
        pip install -r requirements.txt
    fi
}

# Función para desactivar el entorno virtual y eliminar la carpeta venv
desactivarEliminarEntornoVirtual() {
    deactivate
    rm -rf venv
}

# Verificación del argumento
if [ "$1" = "on" ]; then
    crearEntornoVirtual
    activarEntornoVirtual
    instalarPaquetes
elif [ "$1" = "off" ]; then
    desactivarEliminarEntornoVirtual
else
    echo "Argumento no reconocido. Utilice 'on' para activar o 'off' para desactivar."
fi