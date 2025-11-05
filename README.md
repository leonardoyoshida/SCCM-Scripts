# SCCM Scripts & Queries

Este repositório contém scripts em **PowerShell**, **BAT** e consultas **SQL** para administração do **Microsoft SCCM (System Center Configuration Manager)**.  
O objetivo é **automatizar tarefas**, **otimizar processos** e **garantir conformidade** com os requisitos corporativos.

---

## 📂 Estrutura do Repositório
- **PowerShell/** → Scripts para automação e manutenção.
- **BAT/** → Scripts para instalação e configuração.
- **Queries/** → Consultas SQL para relatórios, inventário e auditoria.

---

## ✅ Como usar

### 1. Clonar o repositório:
```bash
git clone https://github.com/leonardoyoshida/SCCM-Scripts.git
cd SCCM-Scripts
```

### 2. Ajustar política de execução do PowerShell:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### 3. Executar um script PowerShell:
```powershell
.\PowerShell\NomeDoScript.ps1
```

---

## ⚙️ Pré-requisitos
- **Windows PowerShell 5.1** ou **PowerShell 7+**
- Permissões administrativas no SCCM

---

## 🛡️ Boas práticas
- **Sempre teste em ambiente de homologação antes de produção**
- **Revise parâmetros antes de executar scripts**
- **Mantenha backups das configurações originais**

---

## 📌 Contribuições
Sinta-se à vontade para abrir **Issues** ou enviar **Pull Requests** com melhorias.

---

## 📜 Licença
Este projeto está sob a licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.
