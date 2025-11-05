# 📂 Scripts XML para SCCM

Este diretório contém arquivos **XML** utilizados para instalação e desinstalação silenciosa de softwares via **Microsoft SCCM**.
Esses arquivos foram criados para automatizar processos e garantir padronização em ambientes corporativos.

---

## ✅ Objetivo
Facilitar:
- **Instalação do Office 365** via SCCM.
- **Desinstalação silenciosa do Office 365**.
- **Desinstalação silenciosa do Microsoft Visio 2016**.

---

## 📜 Lista de Arquivos
- **uninstall_visio2016.xml** → Remove o Microsoft Visio 2016 de forma silenciosa.
- **install_office365.xml** → Instala o Microsoft Office 365 via SCCM.
- **uninstall_office365.xml** → Remove o Microsoft Office 365 de forma silenciosa.

---

## ▶ Como usar
1. Copie o arquivo XML para o diretório apropriado no servidor SCCM.
2. Configure a aplicação ou pacote no SCCM utilizando o XML.
3. Valide as configurações antes de aplicar em produção.

Exemplo de importação via PowerShell:
```powershell
Import-CMConfiguration -Path "C:\Scripts\Xml\install_office365.xml"
```

---

## ⚠ Importante
- Teste sempre em ambiente de homologação antes de aplicar em produção.
- Revise os parâmetros do XML antes de importar.
- Mantenha backups das configurações originais.
