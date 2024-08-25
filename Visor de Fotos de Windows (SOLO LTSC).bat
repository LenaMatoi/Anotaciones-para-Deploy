@ECHO OFF
:Inicio
COLOR 0A
SET THISDIR=%~dp0

ECHO  ###############################################
ECHO  #### Añadimos el Visor Clasico de Windows #####
ECHO  ###############################################

REM AÑADIMOS LAS CLAVES DE REGISTRO PARA REGISTAR EL VISOR DE FOTOS CLASICO (SOLO LTSC)
reg add "HKCU\Software\Classes\.jpg" /ve /t "REG_SZ" /d "PhotoViewer.FileAssoc.Tiff" /f
reg add "HKCU\Software\Classes\.jpeg" /ve /t "REG_SZ" /d "PhotoViewer.FileAssoc.Tiff" /f
reg add "HKCU\Software\Classes\.gif" /ve /t "REG_SZ" /d "PhotoViewer.FileAssoc.Tiff" /f
reg add "HKCU\Software\Classes\.png" /ve /t "REG_SZ" /d "PhotoViewer.FileAssoc.Tiff" /f
reg add "HKCU\Software\Classes\.bmp" /ve /t "REG_SZ" /d "PhotoViewer.FileAssoc.Tiff" /f
reg add "HKCU\Software\Classes\.tiff" /ve /t "REG_SZ" /d "PhotoViewer.FileAssoc.Tiff" /f
reg add "HKCU\Software\Classes\.ico" /ve /t "REG_SZ" /d "PhotoViewer.FileAssoc.Tiff" /f