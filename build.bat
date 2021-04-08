@echo off
echo Patching App Directory

del AppSourceCode\GreentegCoreApp1.sln
del AppSourceCode\GreentegCoreApp1.csproj

color 47
echo /!\ For PcLink only use the default PcLinkServerBase in Util.cs for testing, do not use it for commercial or even regular personal use. The data dosen't get deleted and i have not a lot space on the server. /!\
pause
color 07

xcopy GreentegCoreApp1.sln AppSourceCode\GreentegCoreApp1.sln
xcopy GreentegCoreApp1.csproj AppSourceCode\GreentegCoreApp1.csproj

cd AppSourceCode
dotnet restore
msbuild GreentegCoreApp1.sln
cd ..
pause
