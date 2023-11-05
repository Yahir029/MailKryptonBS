BEGIN {
    outfile = "Rebin.txt"
    # Leer el archivo de entrada
    while (getline < "mensaje_encriptado.txt") {
        mensaje = $0
    }
    # Dividir el mensaje en símbolos usando la expresión regular
    regex = "°|¿[+*{}\\[\\]]|¿[-?!()&%$#'@:;><]|¿¿|¿_|¿¡|¿Ø|¿€|+|*|[{}]|[]\\[]|-|_|¿|?|¡|!|[()]|&|%|[$]|#|'|@|[<>]|Ø|:|;|€|β|Ω|∞|ɮ|π|¥|Ɣ|Ʃ|Ƶ|±"

    count = 1
    while (match(mensaje, regex)) {
        symbol = substr(mensaje, RSTART, RLENGTH)
        symbols[count++] = symbol
        mensaje = substr(mensaje, RSTART + RLENGTH)
    }

    # Convertir símbolos a binario y imprimir
    for (i = 1; i < count; i++) {
        if (resymbol[symbols[i]]) {
            printf("%s ", resymbol[symbols[i]]) > outfile
        }
    }
}
