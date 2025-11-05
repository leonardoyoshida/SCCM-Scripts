@echo off
rem Muda a cor do terminal
color 2

rem Cria o diretório
mkdir C:\PastaLiberada\KeePass

rem Imprime mensagem na tela
echo Iniciando cópia do KeePass da rede para o local C:\PastaLiberada\Kepass

rem Copia os arquivos da rede para o diretório local
xcopy "\\Servidor\KeePass\KeePass-2.60-Setup.exe" "C:\PastaLiberada\Keepass" /Y /I

REM === Alterar variáveis TEMP e TMP para a pasta desejada ===
set TEMP=C:\PastaLiberada && set TMP=C:\PastaLiberada

rem Navega até o diretório
cd /d "C:\PastaLiberada\Keepass"

REM === Executar instalador localmente ===
echo Executando instalador KeePass...
start KeePass-2.60-Setup.exe /VERYSILENT

REM === Fim ===
ENDLOCAL
``
