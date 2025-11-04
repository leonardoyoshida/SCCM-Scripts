# Scripts BAT para SCCM

Este diretório contém scripts em formato BAT desenvolvidos para auxiliar na instalação e configuração de componentes no SCCM.  
Esses scripts seguem um padrão que resolve problemas comuns de instalação, especialmente em cenários corporativos onde:
- Softwares são distribuídos por arquivos e executados diretamente de diretórios, sem instaladores tradicionais.
- Antivírus bloqueia instalações na pasta `%TEMP%`, exigindo estratégias alternativas, como a extração de arquivos temporários em diretórios seguros e a alteração temporária das variáveis de ambiente.

## 📜 Lista de Scripts
- **install_interplan.bat** → Cria diretório e copia o software do servidor para esse diretório, contornando falhas de instalação no contexto SYSTEM do SCCM (que ocorrem ao aplicar permissões ao grupo [%USERDOMAIN]\LogonUser).
- **instalador_kaffa.bat** → Cria diretório e copia o software do servidor para esse diretório. Instala o Kaffa 3.27.14 e ajusta a variável de ambiente `JAVA_TOOL_OPTIONS` com aspas simples, corrigindo falhas na inicialização do software.
- **instalar_keepass.bat** → Cria diretório e copia o software do servidor para esse diretório. Altera temporariamente as variáveis de ambiente `TEMP` e `TMP` para uma pasta liberada, permitindo a instalação do software sem bloqueio.

## ▶ Como executar
Execute o arquivo BAT com privilégios administrativos:
```cmd
NomeDoScript.bat

⚠ Importante: Teste sempre em ambiente de homologação antes de aplicar em produção.
