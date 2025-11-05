# Caminho local ou de rede para o instalador
$InstallerPath = "\\Servidor\SCC\SCC2.1 Installer Setup.exe"

# Parâmetros de instalação silenciosa (exemplo genérico, pode precisar ajustar)
$SilentArgs = "/quiet /norestart"

# Verificar se o instalador existe
if (Test-Path $InstallerPath) {
    Write-Output "Iniciando a instalação do S&C TripSaver II..."
    Start-Process -FilePath $InstallerPath -ArgumentList $SilentArgs -Wait -NoNewWindow
    Write-Output "Instalação concluída."
} else {
    Write-Error "Arquivo de instalação não encontrado em $InstallerPath"
    exit 1
}
