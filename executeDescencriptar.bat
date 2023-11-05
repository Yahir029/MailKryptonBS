del Mensaje_Descencriptado.txt
cd Tables
move Table_ReSymbols.awk ..\DSEKript\
move Table_Ascii.awk ..\DSEKript\

cd ..
move mensaje_encriptado.txt DSEKript

cd DSEKript
awk -f Table_ReSymbols.awk -f reverse_Symbols.awk
awk -f Table_Ascii.awk -f reverse_Binary.awk

copy Rebin.txt ..\temp\
del Rebin.txt

move Table_ReSymbols.awk ..\Tables\
move Table_Ascii.awk ..\Tables\
move mensaje_encriptado.txt ..\MailKryptonBS
cd ..
ren MailKryptonBS mensaje_encriptado.txt
cd DSEKript
move Mensaje_Descencriptado.txt ..\MailKryptonBS
cd ..
ren MailKryptonBS Mensaje_Descencriptado.txt
cls
Mensaje_Descencriptado.txt


