@Echo Off
Title 从coding云端更新 SS 配置文件
cd /d %~dp0
wget --ca-certificate=ca-bundle.crt -c https://raw.githubusercontent.com/Alvin9999/pac2/master/ssconfig.txt
del ".\gui-config.json_backup"
ren ".\gui-config.json"  gui-config.json_backup
certutil -decode ssconfig.txt gui-config.json
ECHO.&ECHO.已更新SSR配置文件,请按任意键退出,并重启程序. &PAUSE >NUL 2>NUL