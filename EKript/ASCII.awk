# Contenido de procesar_cadena.awk
BEGIN {
    outfile = "Ascii.maiK"
    # Leer la cadena desde un archivo de texto
    getline cadena < "MessasgePrueba.txt"
    
    # Procesar la cadena para buscar los números ASCII
    len = length(cadena)
    
    for (i = 1; i <= len; i++) {
        char = substr(cadena, i, 1)
        if (char in tabla) {
            printf "%d ", tabla[char] > outfile
        }
    }
    printf "\n"
}
