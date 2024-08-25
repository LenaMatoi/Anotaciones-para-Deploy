REM MATAMOS EL PROCESO EXPLORER
taskkill /f /im explorer.exe
REM ESPERAMOS UN POCO
timeout 2 /nobreak>nul
REM PROCEDEMOS A BORRAR LA CACHE DE ICONOS
DEL /F /S /Q /A %LocalAppData%\Microsoft\Windows\Explorer\*.db
DEL /F /S /Q /A %userprofile%\AppData\Local\IconCache.db
REM REALIZAMOS UNA ESPERA
timeout 2 /nobreak>nul
REM REARRANCAMOS EXPLORER
start explorer.exe