# https://chocolatey.org/install#more-install-options
echo "Ensure this is powershell with Administrator!"
echo "Installing Chocolatey on Win10, if errror please install manual"
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
# from https://www.wireshark.org/docs/wsdg_html_chunked/ChSetupWin32.html
choco install -y winflexbison
choco install -y git cmake
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