del mensaje_encriptado.txt
move MessasgePrueba.txt EKript
cd Tables
move Table_Symbols.awk ..\EKript\
move Table_Ascii.awk ..\EKript\
cd ..\EKript\

awk -f Table_Ascii.awk -f ASCII.awk
awk -f Binary.awk Ascii.maiK
awk -f Table_Symbols.awk -f Kript.awk

copy Ascii.maiK ..\temp\
copy bin.txt ..\temp\
del Ascii.maiK
del bin.txt


move Table_Symbols.awk ..\Tables\
move Table_Ascii.awk ..\Tables\
move mensaje_encriptado.txt ..\MailKryptonBS
cd ..
ren MailKryptonBS mensaje_encriptado.txt
cd EKript
move MessasgePrueba.txt ..\MailKryptonBS
cd ..
ren MailKryptonBS MessasgePrueba.txt
cls
mensaje_encriptado.txt
