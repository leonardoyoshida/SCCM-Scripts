-- Nome: Consulta de Sistemas por BuildNumber
-- Autor: Leonardo Oliveira Yoshida
-- Descrição: Lista dispositivos com Windows 10 da versão 1507 (OS build 10240) até 21H1 (OS build 19043).
-- Data: 2025-11-05

SELECT SMS_R_System.Name,
       SMS_R_System.LastLogonUserName,
       SMS_R_System.IPAddresses,
       SMS_R_System.Build,
       SMS_G_System_OPERATING_SYSTEM.BuildNumber,
       SMS_R_System.ADSiteName
FROM SMS_R_System
INNER JOIN SMS_G_System_OPERATING_SYSTEM
    ON SMS_G_System_OPERATING_SYSTEM.ResourceID = SMS_R_System.ResourceId
WHERE SMS_G_System_OPERATING_SYSTEM.BuildNumber IN (
    "10240","10586","14393","15063","16299","17134","17763",
    "18362","18363","19041","19042","19043"
);
