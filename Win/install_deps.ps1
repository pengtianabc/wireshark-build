# https://chocolatey.org/install#more-install-options
echo "Ensure this is powershell with Administrator!"
echo "Installing Chocolatey on Win10, if errror please install manual"
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
# from https://www.wireshark.org/docs/wsdg_html_chunked/ChSetupWin32.html
choco install -y winflexbison git
echo "this is 32bit(https://cmake.org/files/v3.11/cmake-3.11.3-win32-x86.msi)"
echo "if you need 64bit, install from https://cmake.org/files/v3.11/cmake-3.11.3-win64-x64.msi"
choco install -y cmake
choco install -y activeperl
choco install -y python2
choco install -y cygwin
choco install -y cyg-get
cyg-get docbook-xml45
choco install -y git
choco install -y asciidoctorj xsltproc docbook-bundle

# for make installer
echo "Warning! If you have install nsis into other directory manually"
echo "you may will can NOT FOUND nsis_package_prep.vcxproj and nsis_package.vcxproj"
choco install -y nsis

<#
for standalone debug
choco install windbg
#>