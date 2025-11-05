-- Nome: Consulta de Sistemas com Windows 7
-- Autor: Leonardo Oliveira Yoshida
-- Descrição: Lista dispositivos SCCM com Windows 7, incluindo nome, último usuário logado, timestamp, site AD e modelo.
-- Data: 2025-11-05

SELECT SMS_R_System.Name,
       SMS_R_System.LastLogonUserName,
       SMS_R_System.LastLogonTimestamp,
       SMS_R_System.ADSiteName,
       SMS_G_System_COMPUTER_SYSTEM.Model
FROM SMS_R_System
INNER JOIN SMS_G_System_OPERATING_SYSTEM
    ON SMS_G_System_OPERATING_SYSTEM.ResourceID = SMS_R_System.ResourceId
INNER JOIN SMS_G_System_COMPUTER_SYSTEM
    ON SMS_G_System_COMPUTER_SYSTEM.ResourceID = SMS_R_System.ResourceId
WHERE SMS_G_System_OPERATING_SYSTEM.Caption LIKE "%Microsoft Windows 7%";
