:: .NET Framework 4
:: Refresco del .NET
"%windir%\Microsoft.NET\Framework\v4.0.30319\ngen.exe" update /force
"%windir%\Microsoft.NET\Framework\v4.0.30319\ngentask.exe" /runtimewide
"%windir%\Microsoft.NET\Framework64\v4.0.30319\ngen.exe" update /force
"%windir%\Microsoft.NET\Framework64\v4.0.30319\ngentask.exe" /runtimewide

:: Comprobación, limpieza y reparación de archivos del sistema
"%windir%\system32\Dism.exe" /Online /Cleanup-Image /StartComponentCleanup /ResetBase /RestoreHealth
"%windir%\system32\sfc.exe" /SCANNOW

:: Liberador de espacio en disco clásico
"%windir%\system32\cleanmgr.exe" /sageset:65535
"%windir%\system32\cleanmgr.exe" /sagerun:65535

:: Elimina las instantáneas de un volumen
vssadmin Delete Shadows /All

:: Defragmentar disco
"%windir%\system32\dfrgui.exe"