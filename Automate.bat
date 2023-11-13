@ECHO OFF
TITLE Computer Details
ECHO ===================
ECHO == Windows Info  ==
ECHO ===================
systeminfo | findstr /c:"Host Name"
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"

ECHO ===================
ECHO == Hardware Info ==
ECHO ===================

systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size

ECHO ===================
ECHO == Network Info  ==
ECHO ===================

ipconfig | findstr IPv4

ipconfig | findstr IPv6

REM could run on a server path
REM \\server\automate.bat

PAUSE
