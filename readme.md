# Wireshark-build

## Purpose

Build wireshark automatic.

## Description

 1. Install `Vistual Studio` by yourself.
 2. Install `QT(Ver>5.0)` by yourself.
 3. Fetch wireshark source code.
 4. Run `install_deps.ps1` in Powershell.
 5. Edit or check `set_env\[_64\].bat` and `build\[_64\].bat` by your environment: 
    1) Check Visual Studio version; 
    2) Check QT version, target platform; 
    3) Edit the source code target directory in set_env\[_64\].bat ;
    4) Read `build.bat` line by line;
 6. Run `build.bat`, if you got errors, check build.bat
 
> NOTE: When build installer, you may got a error(not found vcredist_x86.exe or vcredist_x64.exe ), put one into wireshark-win32-libs(wireshark-win64-libs when x64)
