echo ">>>>Warning! Quit the 360 or other anti softwares !<<<<"
set THREADS=8
set WIRESHARK_TARGET_PLATFORM=win64
set WIRESHARK_SRC_DIR=D:\Learn\wireshark-gm
rem Let CMake determine the library download directory name under
rem WIRESHARK_BASE_DIR or set it explicitly by using WIRESHARK_LIB_DIR.
rem Set *one* of these.
set WIRESHARK_BASE_DIR=D:\Development
rem set WIRESHARK_LIB_DIR=c:\wireshark-win64-libs
rem Set the Qt installation directory
set QT5_BASE_DIR=E:\Qt\Qt5.9.5\5.9.5\msvc2015_64
rem Append a custom string to the package version. Optional.
set WIRESHARK_VERSION_EXTRA=-gm
rem ensure your cmake version is 64bit
set cmake=C:\Program Files\CMake\bin\cmake.exe
rem Chocolatey installs Cygwin in an odd location
set WIRESHARK_CYGWIN_INSTALL_PATH=C:\tools\cygwin
set BUILD_DIR=%WIRESHARK_BASE_DIR%\wsbuild64
mkdir %BUILD_DIR%
cd /d %BUILD_DIR%
rem for x86
rem set MSBUILD=C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe
rem for x64
set MSBUILD=C:\Program Files (x86)\MSBuild\14.0\Bin\amd64\MSBuild.exe
