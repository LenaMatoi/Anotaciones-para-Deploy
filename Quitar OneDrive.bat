@ECHO OFF
:Inicio
COLOR 0A
SET THISDIR=%~dp0

ECHO  #######################################
ECHO  ##### Eliminacion del Onedrive ########
ECHO  #######################################

REM MATAMOS EL ONEDRIVE
taskkill /IM "OneDrive.exe" /F
REM PROCEDEMOS A DESISNTALAR EL ONEDRIVE
%windir%\SysWOW64\OneDriveSetup.exe /uninstall
REM BORRAMOS FICHEROS RESTANTES DEL ONEDRIVE
rmdir "%UserProfile%\OneDrive" "%ProgramData%\Microsoft OneDrive" "%LocalAppData%\Microsoft\OneDrive" "C:\OneDriveTemp" /S /Q
REM BORRAMOS LAS CLAVES DE REGISTRO DEL ONEDRIVE
reg delete "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg delete "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
REM FINAL