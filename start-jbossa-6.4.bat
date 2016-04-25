REM **************************************
REM *** JBoss EAP 6.4.0 Startup script ***
REM **************************************

set "JAVA_HOME=C:\Development\Tools\new_jboss\java\jre8"

set "NODE_NAME=jbossa"
set "JBOSS_HOME=C:\Development\Tools\new_jboss\jboss-eap-6.4"
set "JBOSS_MODULEPATH=%JBOSS_HOME%\custom_modules;%JBOSS_HOME%\modules"

set "JBOSS=C:\Development\Tools\new_jboss\instances\%NODE_NAME%"
set "JBOSS_CONFIGURATION=%JBOSS%\configuration"
set "JBOSS_TMP=%JBOSS%\tmp"
set "JBOSS_DATA=%JBOSS%\data"
set "JBOSS_LOG=%JBOSS%\log"
set "JBOSS_DEPLOYMENTS=%JBOSS%\deployments"
set "JBOSS_LIB=%JBOSS%\lib"

call %JBOSS_HOME%\bin\standalone.bat --debug -Djboss.node.name=%NODE_NAME% -Djboss.server.base.dir=%JBOSS%  -Djboss.server.config.dir=%JBOSS_CONFIGURATION%  -Djboss.server.data.dir=%JBOSS_DATA% -Djboss.server.deploy.dir=%JBOSS_DEPLOYMENTS% -Djboss.server.log.dir=%JBOSS_LOG%  -c=jboss.xml -P=%JBOSS_CONFIGURATION%\local.properties 

