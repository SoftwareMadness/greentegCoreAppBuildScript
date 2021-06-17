@echo off
echo Certificate Configuration
echo Distributor  Password:%distributorpass%
echo              Path:    %distributorcert%
echo Developer    Password:%developerpass%
echo              Path:    %developercert%

echo Assembling new csproj

SetCsprojPass %developercert% %developerpass% %distributorcert% %distributorpass% AppSourceCode\GreentegCoreApp1.csproj AppSourceCode\GreentegCoreApp1.csproj

del cstzpass.csproj
pause
