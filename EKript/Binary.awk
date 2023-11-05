# Contenido de convertir_ascii_a_binario.awk

BEGIN {
    FS = " "  # Usar un espacio como separador de campos
    outfile = "bin.txt"
}

{
    for (i = 1; i <= NF; i++) {
        ascii = $i  # Obtenemos un número ASCII de la lista
        binary = ""  # Inicializamos una cadena para la representación binaria
        
        # Convertir el número ASCII en su representación binaria
        while (ascii) {
            bit = ascii % 2
            binary = bit binary
            ascii = int(ascii / 2)
        }
        
        # Rellenar con ceros a la izquierda para asegurar 8 bits
        binary = sprintf("%08d", binary)
        
        # Imprimir la representación binaria
        printf "%s ", binary > outfile
    }
}

