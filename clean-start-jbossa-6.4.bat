REM **************************************
REM *** JBoss EAP 6.4.0 Preparation script ***
REM **************************************

set "ROOT=C:\Development\Tools\new_jboss"
set "JBOSS_HOME=%ROOT%\jboss-eap-6.4"
set "STANDALONE=%JBOSS_HOME%\standalone"
set "TMP=%STANDALONE%\tmp"
set "DATA=%STANDALONE%\data"
set "LOG=%STANDALONE%\log"
set "DEPLOYMENTS=%STANDALONE%\deployments"

@RD /S /Q %DATA%
@RD /S /Q %TMP%

DEL "%LOG%\*.log" /a /s
DEL "%DEPLOYMENTS%\*.deployed" /a /s
DEL "%DEPLOYMENTS%\*.failed" /a /s
DEL "%DEPLOYMENTS%\*.isdeploying" /a /s

CALL %ROOT%\start-jbossa-6.4.bat
