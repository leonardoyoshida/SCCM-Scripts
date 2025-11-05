@echo off
rem Altera a cor da janela
color 2

rem Cria o diretório para a nova versão
mkdir C:\PastaLiberada\Interplan\Versao1855

rem Exibe mensagem de início
echo Iniciando cópia da aplicação para C:\PastaLiberada\Interplan\Versao1855

rem Copia o instalador da rede para o diretório local
xcopy "\\Servidor\1855\InterplanSetup.exe" "C:\PastaLiberada\Interplan\Versao1855" /Y /I

rem Navega até o diretório
cd /d "C:\PastaLiberada\Interplan\Versao1855"

rem Inicia a pasta
start "" "C:\PastaLiberada\Interplan\Versao1855"

exit

By Leonardo Oliveira Yoshida