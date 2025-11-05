# Remove entradas do WinRAR no registro para não aparecer no Painel de Controle
$paths = @(
    "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall",
    "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall",
    "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
)

foreach ($path in $paths) {
    Get-ChildItem $path | ForEach-Object {
        $displayName = (Get-ItemProperty $_.PSPath).DisplayName 2>$null
        if ($displayName -like "*WinRAR*") {
            Write-Host "Removendo entrada do registro: $displayName"
            Remove-Item $_.PSPath -Recurse -Force
        }
    }
}
