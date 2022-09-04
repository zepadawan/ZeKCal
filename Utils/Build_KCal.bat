rem SET MSBuild="C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe"
SET BUILDS=C:\Users\jeanf\AppData\Local\Jenkins\.jenkins\workspace\Applications\dist
set BUILD_NUMBER = 2.0.0.0
rem SET OUTPUT_PATH="%BUILDS%%BUILD_NUMBER%"
SET OUTPUT_PATH="%BUILDS%"
SET RSVARS="C:\Program Files (x86)\Embarcadero\Studio\20.0\bin\rsvars.bat"

CALL %RSVARS%
rem %MSBuild% xxx.dproj /t:Build /p:Config=Debug;Platform=Win32;DCC_ExeOutput=%OUTPUT_PATH% /maxcpucount:4
cd /D "D:\Dev\Project\ZeKCal\"
rem msbuild "SuiviPoids.dproj" /t:build /p:Configuration=Debug /p:platform=Win32
msbuild "SuiviPoids.dproj" /t:build /p:Configuration=Debug /p:platform=Win32;DCC_ExeOutput=%OUTPUT_PATH% /maxcpucount:4

   
<<<<<<< HEAD
  

=======


>>>>>>> KCal
  