BEGIN {
    # Leer el mensaje en binario desde el archivo "Rebin.txt"
    getline cadena < "Rebin.txt"
    outfile = "Mensaje_Descencriptado.txt"
    
    # Dividir el mensaje en binario en bloques usando guiones como separadores
    split(cadena, bloques, " ");

    # Iterar sobre los bloques y convertirlos a caracteres ASCII
    for (i = 1; i <= length(bloques); i++) {
        bloque = bloques[i];
        # Verificar si el bloque está en la tabla
        if (bloque in tabla) {
            # Obtener el valor ASCII correspondiente al bloque de binario y convertirlo a caracter
            caracter = sprintf("%c", tabla[bloque]);
            # Imprimir el caracter
            printf "%s", caracter > outfile
        }
    }
}
