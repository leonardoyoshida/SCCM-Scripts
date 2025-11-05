# Verifica entradas de desinstalação no registro (32 e 64 bits)
$uninstallPaths = @(
    "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

foreach ($path in $uninstallPaths) {
    Get-ItemProperty $path | Where-Object {
        $_.DisplayName -like "*Mozilla Firefox*"
    } | ForEach-Object {
        Write-Host "Desinstalando: $($_.DisplayName) - Versão: $($_.DisplayVersion)"
        if ($_.UninstallString) {
            $uninstallCmd = $_.UninstallString

            # Remove aspas e argumentos extras, se necessário
            if ($uninstallCmd -match "msiexec") {
                Start-Process "msiexec.exe" -ArgumentList "/x $($_.PSChildName) /qn" -Wait
            } else {
                # Remove aspas e adiciona /S para desinstalação silenciosa
                $uninstallCmd = $uninstallCmd -replace '"', ''
                Start-Process -FilePath $uninstallCmd -ArgumentList "/S" -Wait
            }
        }
    }
}
