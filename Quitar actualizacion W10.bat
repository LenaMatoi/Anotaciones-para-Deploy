@ECHO OFF
:Inicio
COLOR 0A
SET THISDIR=%~dp0

ECHO  #######################################
ECHO  ### Borrado Upgrade Windows 10 ########
ECHO  #######################################

TASKKILL /F /IM Windows10UpgraderApp.exe /T

TIMEOUT /T 10 /NOBREAK

if exist "C:\Windows10Upgrade" RD /S /Q "C:\Windows10Upgrade"
if exist "C:\Windows\UpdateAssistantV2" RD /S /Q "C:\Windows\UpdateAssistantV2"

TIMEOUT /T 5 /NOBREAK