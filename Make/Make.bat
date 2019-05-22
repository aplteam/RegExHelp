; Note that the bridge and the DyalogNET DLL must be compatible to the version of APL called from here!
"C:\Program Files (x86)\Dyalog\Dyalog APL 15.0 Unicode\dyalog.exe" %1 maxw=64000 %2 %3 %4
IF %ERRORLEVEL% NEQ 0 echo ERROR