# Lista de GUIDs para desinstalação silenciosa
# Você pode usar o nome do produto também via WMI se preferir

Write-Output "Procurando .NET Desktop Runtime 8.0.18 x64..."
$runtimeX64 = Get-WmiObject -Class Win32_Product | Where-Object {
    $_.Name -like "Microsoft Windows Desktop Runtime - 8.0.18 (x64)*"
}

if ($runtimeX64) {
    Write-Output "Desinstalando .NET Desktop Runtime 8.0.18 x64..."
    $runtimeX64.Uninstall()
} else {
    Write-Output "Runtime x64 não encontrado."
}

Write-Output "Procurando .NET Desktop Runtime 8.0.18 x86..."
$runtimeX86 = Get-WmiObject -Class Win32_Product | Where-Object {
    $_.Name -like "Microsoft Windows Desktop Runtime - 8.0.18 (x86)*"
}

if ($runtimeX86) {
    Write-Output "Desinstalando .NET Desktop Runtime 8.0.18 x86..."
    $runtimeX86.Uninstall()
} else {
    Write-Output "Runtime x86 não encontrado."
}

Write-Output "Desinstalação finalizada."
