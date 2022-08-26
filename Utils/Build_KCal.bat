call "C:\Program Files (x86)\Embarcadero\Studio\20.0\bin\rsvars.bat"
cd /D "D:\Dev\Project\ZeKCal\"
msbuild "SuiviPoids.dproj" /t:build /p:Configuration=Debug /p:platform=Win32