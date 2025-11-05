
@echo off
SETLOCAL

:: Copiar instalador do servidor para C:\PastaLiberada
xcopy "\\Servidor\KAFFA\client-windows-x86.exe" "C:\PastaLiberada" /Y /I

:: Executar instalação silenciosa no diretório especificado
"C:\PastaLiberada\client-windows-x86.exe" /VERYSILENT /DIR=C:\PastaLiberada\Kaffa

:: Alterar variável de ambiente JAVA_TOOL_OPTIONS com aspas simples
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v JAVA_TOOL_OPTIONS /t REG_EXPAND_SZ /d -Djava.vendor='Sun Microsystems Inc.' /f

:: Atualizar variável na sessão atual
setx JAVA_TOOL_OPTIONS "-Djava.vendor='Sun Microsystems Inc.'" /M

:: Finalizar script com código de sucesso
ENDLOCAL
exit /b 0
