@echo off
setlocal

REM ==============================
REM EDIT ONLY THESE VALUES
REM ==============================
set "VPN_TUNNEL=DDC1"
set "VPN_USERNAME=gggg"
set "VPN_PASSWORD=gggg!!"
REM ==============================

set "FORTIVPN=C:\Program Files\Fortinet\FortiClient\FortiVPN.exe"

echo Connecting to %VPN_TUNNEL%...

"%FORTIVPN%" --cli --connect --tunnel "%VPN_TUNNEL%" --username "%VPN_USERNAME%" --password "%VPN_PASSWORD%" --keeprunning

exit /b