@echo off
del GreentegCoreApp1.csproj
del GreentegCoreApp1.sln
xcopy base\*.* . /r
color 47
echo /!\ For PcLink only use the default PcLinkServerBase in Util.cs for testing, do not use it for commercial or even regular personal use. The data dosen't get deleted and i have not a lot space on the server. /!\
pause
color 07

set /p distributorcert="Distributor Certificate Path:"
set /p distributorpass="Distributor Certificate Password:"
set /p developercert="Distributor Certificate Path:"
set /p developerpass="Distributor Certificate Password:"

echo Certificate Configuration
echo Distributor  Password:%distributorpass%
echo              Path:    %distributorcert%
echo Developer    Password:%developerpass%
echo              Path:    %developercert%

echo Assembling new csproj

SetCsprojPass %developercert% %developerpass% %distributorcert% %distributorpass% GreentegCoreApp1.csproj GreentegCoreApp1.csproj

del cstzpass.csproj
pause
