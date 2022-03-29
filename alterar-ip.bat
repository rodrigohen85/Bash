@echo off

set INTERFACE=Ethernet 3
set IP=INSIRA IP
set NETMASK=INSIRA MASCARA
set GATEWAY=INSIRA GATEWAY
set DNS1=INSIRA DNS PRIMARIO
set DNS2=INSIRA DNS SECUNDARIO

netsh interface ip set address name="%INTERFACE%" static %IP% %NETMASK% %GATEWAY%
netsh interface ip set dnsservers name="%INTERFACE%" static %DNS1% primary no
netsh interface ip add dnsservers name="%INTERFACE%" %DNS2% index=2

echo Configurando IP
echo.
echo Interface %INTERFACE%
echo IP %IP%
echo Mascara %NETMASK%
echo Gateway %GATEWAY%
echo DNS1 %DNS1%
echo DNS2 %DNS2%

ping -n 4 -w 1000 0.0.0.1 > nul

ipconfig

pause
