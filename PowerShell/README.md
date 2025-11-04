# Scripts PowerShell para SCCM

Este diretório contém scripts desenvolvidos para automação e manutenção de tarefas no Microsoft SCCM, com foco em otimização de processos e conformidade com os requisitos corporativos.

## 📜 Lista de Scripts
- **DetectionScript_AbsoluteClient.ps1** → Método de detecção do Absolute Client no SCCM.
- **Uninstall_Firefox.ps1** → Remove todas as versões do Mozilla Firefox de forma silenciosa. Ideal para manter o ambiente em conformidade com os padrões empresariais.
- **Uninstall-WinRAR.ps1** → Remove todas as versões do WinRAR de forma silenciosa.
- **Remove-WinRAR-Residuo.ps1** → Limpa resíduos do registro do WinRAR (32 e 64 bits), útil para máquinas que ainda aparecem em consultas.
- **Install-DotNetDesktopRuntime-8.0.18-MultiArch.ps1** → Instala as versões x86 e x64 do .NET Desktop Runtime simultaneamente. Requisito para Power Automate em ambientes com bloqueio de rede.
- **Uninstall-DotNetDesktopRuntime-8.0.18-MultiArch.ps1** → Remove as duas versões do .NET Desktop Runtime.
- **InstalSCC.ps1** → Instala o SCC 2.1 (Substation Control Center), contornando erros comuns no SCCM.

## ▶ Como executar
Antes de rodar os scripts, ajuste a política de execução do PowerShell:
```powershell
Set-ExecutionPolicy RemoteSigned
