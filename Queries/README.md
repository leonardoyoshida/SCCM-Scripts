# Consultas SQL para SCCM

Este diretório contém consultas SQL desenvolvidas para auxiliar na administração do Microsoft SCCM, incluindo relatórios, inventário e auditoria.  
As consultas foram criadas para otimizar a análise de dados e facilitar a tomada de decisão em ambientes corporativos.

## 📜 Lista de Consultas

* **Windows 10 Builds Antigas** → Lista dispositivos com Windows 10 da versão 1507 (OS build 10240) até 21H1 (OS build 19043).
* **Windows 11** → Lista todos os dispositivos com Windows 11.
* **Computadores com Windows 7** → Identifica máquinas que ainda utilizam Windows 7.
* **Notebooks** → Retorna apenas notebooks.
* **Dispositivos com Mozilla Firefox** → Retorna os dispositivos com Mozilla Firefox instalado(todas as versões).
* **Dispositivos com Winrar** → Retorna os dispositivos com Winrar instalado(todas as versões).
* **Dispositivos sem cliente SCCM** → Lista dispositivos sem o cliente SCCM instalado.
* **Modelos de SSD** → Exibe todos os modelos de SSD presentes no ambiente.

## ▶ Como usar

1. Abra o **Configuration Manager**.
2. Vá para a aba **Monitoramento**.
3. Em **Consultas**, clique com o botão direito e selecione **Criar Nova Consulta**.
4. Defina um nome para a consulta e clique em **Editar Instrução de Consulta**.
5. Cole a instrução SQL desejada e salve.

⚠ **Importante:**

* Valide sempre as consultas em ambiente de teste antes de aplicar em produção.
* Algumas consultas podem exigir permissões administrativas.
