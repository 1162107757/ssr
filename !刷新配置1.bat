@Echo Off
Title ��coding�ƶ˸��� SS �����ļ�
cd /d %~dp0
wget --ca-certificate=ca-bundle.crt -c https://raw.githubusercontent.com/Alvin9999/pac2/master/ssconfig.txt
del ".\gui-config.json_backup"
ren ".\gui-config.json"  gui-config.json_backup
certutil -decode ssconfig.txt gui-config.json
ECHO.&ECHO.�Ѹ���SSR�����ļ�,�밴������˳�,����������. &PAUSE >NUL 2>NUL