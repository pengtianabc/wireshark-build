echo ">>>>Warning! Quit the 360 or other anti softwares !<<<<"
set WIRESHARK_SRC_DIR=D:\Learn\wireshark-gm
rem Let CMake determine the library download directory name under
rem WIRESHARK_BASE_DIR or set it explicitly by using WIRESHARK_LIB_DIR.
rem Set *one* of these.
set WIRESHARK_BASE_DIR=D:\Development
rem set WIRESHARK_LIB_DIR=c:\wireshark-win64-libs
rem Set the Qt installation directory
set QT5_BASE_DIR=E:\Qt\Qt5.9.5\5.9.5\msvc2015
rem Append a custom string to the package version. Optional.
set WIRESHARK_VERSION_EXTRA=-gm
set cmake=C:\Program Files\CMake\bin\cmake.exe
rem Chocolatey installs Cygwin in an odd location
set WIRESHARK_CYGWIN_INSTALL_PATH=C:\tools\cygwin
set BUILD_DIR=%WIRESHARK_BASE_DIR%\wsbuild32
mkdir %BUILD_DIR%
cd /d %BUILD_DIR%
rem for x86
set MSBUILD=C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe
rem for x64
rem set MSBUILD=C:\Program Files (x86)\MSBuild\14.0\Bin\amd64\MSBuild.exe
"%cmake%" -G "Visual Studio 14 2015" %WIRESHARK_SRC_DIR%

rem Part1: Build wireshark, if you have error in Part2, comment Part1 to save time

echo "Building solution will take a long time, if you have problem in nsis, note this line to save you time"
"%MSBUILD%" /t:Rebuild /p:Configuration=Release Wireshark.sln

rem Part2: Build nsis and generate a installer
echo "Building nsis project"
echo "Ensure you have copy a vcredist_x86.exe into %WIRESHARK_BASE_DIR%\wireshark-win32-libs"
echo "or vcredist_x64.exe into %WIRESHARK_BASE_DIR%\wireshark-win64-libs "
"%MSBUILD%" /m /p:Configuration=Release nsis_package_prep.vcxproj
"%MSBUILD%" /m /p:Configuration=Release nsis_package.vcxproj
pause