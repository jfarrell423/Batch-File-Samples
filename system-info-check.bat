@ECHO OFF
TITLE Computer Details
ECHO == Windows Info  ==
systeminfo | findstr /c:"Host Name"
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"

ECHO == Hardware Info ==
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size

ECHO == Network Info  ==
ipconfig | findstr IPv4
PAUSE
