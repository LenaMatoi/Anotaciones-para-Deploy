REM .NET Framework 4
REM Refresco del .NET
"%windir%\Microsoft.NET\Framework\v4.0.30319\ngen.exe" update /force
"%windir%\Microsoft.NET\Framework\v4.0.30319\ngentask.exe" /runtimewide
"%windir%\Microsoft.NET\Framework64\v4.0.30319\ngen.exe" update /force
"%windir%\Microsoft.NET\Framework64\v4.0.30319\ngentask.exe" /runtimewide

REM Comprobación, limpieza y reparación de archivos del sistema
"%windir%\system32\Dism.exe" /Online /Cleanup-Image /StartComponentCleanup /ResetBase /RestoreHealth
"%windir%\system32\sfc.exe" /SCANNOW

REM Liberador de espacio en disco clásico
"%windir%\system32\cleanmgr.exe" /sageset:65535
"%windir%\system32\cleanmgr.exe" /sagerun:65535

REM Elimina las instantáneas de un volumen
vssadmin Delete Shadows /All

REM Defragmentar disco
"%windir%\system32\dfrgui.exe"