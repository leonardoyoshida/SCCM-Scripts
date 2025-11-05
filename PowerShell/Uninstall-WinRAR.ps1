$paths = @(
    "C:\Program Files\WinRAR\uninstall.exe",
    "C:\Program Files (x86)\WinRAR\uninstall.exe"
)

foreach ($path in $paths) {
    if (Test-Path $path) {
        Write-Host "Desinstalando via: $path"
        Start-Process -FilePath $path -ArgumentList "/S" -Wait
        Write-Host "Desinstalação concluída."
        break
    }
}
