call set_env_64.bat
rem Part1: Build wireshark, if you have error in Part2, comment Part1 to save time
"%cmake%" -G "Visual Studio 14 2015" %WIRESHARK_SRC_DIR%
echo "Building solution will take a long time, if you have problem in nsis, note this line to save you time"
"%MSBUILD%" /m:%THREADS% /t:Rebuild /p:Configuration=Release Wireshark.sln

rem Part2: Build nsis and generate a installer
echo "Building nsis project"
echo "Ensure you have copy a vcredist_x64.exe into %WIRESHARK_BASE_DIR%\wireshark-win64-libs"
echo "or vcredist_x64.exe into %WIRESHARK_BASE_DIR%\wireshark-win64-libs "
"%MSBUILD%" /m /p:Configuration=Release nsis_package_prep.vcxproj
"%MSBUILD%" /m /p:Configuration=Release nsis_package.vcxproj
pause
