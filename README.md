# SCCM Scripts & Queries

Este repositório contém scripts em **PowerShell**, **BAT** e consultas **SQL** desenvolvidos para administração do Microsoft SCCM.  
O objetivo é automatizar tarefas, otimizar processos e garantir conformidade com os requisitos corporativos.

---

## 📂 Estrutura do Repositório
- **PowerShell/** → Scripts para automação e manutenção.
- **BAT/** → Scripts para instalação e configuração.
- **Queries/** → Consultas SQL para relatórios, inventário e auditoria.

---

## ✅ Como usar

### Clonar o repositório:
```bash
git clone https://github.com/seuusuario/SCCM-Scripts.git

Executar scripts PowerShell:
Antes de rodar, ajuste a política de execução:
Set-ExecutionPolicy RemoteSigned

Depois, execute:
.\PowerShell\NomeDoScript.ps1

Executar scripts BAT:
BAT\NomeDoScript.bat

Executar consultas SQL:

1.Abra o Configuration Manager ou SQL Server Management Studio (SSMS).
2.Cole a instrução SQL desejada.
3.Execute no banco de dados do SCCM (CM_<SiteCode>).

⚠ Observações

Teste sempre em ambiente de homologação antes de aplicar em produção.
Scripts podem exigir permissões administrativas.
Consultas devem ser validadas antes de execução em produção.

📄 Licença
Este projeto está licenciado sob a MIT License.


