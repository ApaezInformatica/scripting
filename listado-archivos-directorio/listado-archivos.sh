#!/bin/bash

# Directorio que quieres revisar
directory="tests"

# Archivo de salida
output_file="tests.txt"

# Vaciar el archivo de salida si ya existe
> "$output_file"

# Función para listar archivos
list_files() {
    local base_dir=$1
    for file in "$base_dir"/*
    do
        if [ -d "$file" ]; then
            # Si es un directorio, llama a la función recursivamente
            list_files "$file"
        # especifico la extension del archivo, en este caso .test.tsx pero puedes poner la que necesites
        elif [[ "$file" == *.test.tsx ]]; then
            # Si es un archivo .tsx, lo agrega al archivo de salida
            # Quitamos la parte del directorio principal y agregamos el resto del path
            local relative_path="${file#$directory/}"
            echo "$relative_path" >> "$output_file"
        fi
    done
}

# Llamada inicial a la función con el directorio de tests
list_files "$directory"