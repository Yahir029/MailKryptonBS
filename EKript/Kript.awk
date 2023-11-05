# Segunda parte del programa
BEGIN	{
    # Leer el archivo de texto binario que contiene el mensaje en binario
    file = "bin.txt" # Nombre del archivo que contiene el mensaje binario
    
    # Nombre del archivo para guardar el mensaje encriptado
    output_file = "mensaje_encriptado.txt"
    
    # Leer el archivo usando sistema de codificación binaria
    while ((getline mensaje < file) > 0) {
        # Eliminar cualquier espacio en blanco del mensaje binario
        gsub(" ", "", mensaje)
        
        # Dividir el mensaje en bloques de 8 bits (un byte) y encriptarlo
        for (i = 1; i <= length(mensaje); i += 8) {
            bloque = substr(mensaje, i, 8)
            # Imprimir el símbolo horizontalmente sin un salto de línea y guardar en el archivo de salida
            printf "%s", symbol[bloque] > output_file
        }
    }
}