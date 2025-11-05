-- Nome: Consulta Dispositivos com WinRAR instalado
-- Autor: Leonardo Oliveira Yoshida
-- Descrição: Lista dispositivos que possuem WinRAR instalado.
-- Data: 2025-11-05

SELECT SMS_R_SYSTEM.ResourceID,
       SMS_R_SYSTEM.ResourceType,
       SMS_R_SYSTEM.Name,
       SMS_R_SYSTEM.SMSUniqueIdentifier,
       SMS_R_SYSTEM.ResourceDomainORWorkgroup,
       SMS_R_SYSTEM.Client
FROM SMS_R_System
INNER JOIN SMS_G_System_INSTALLED_SOFTWARE
    ON SMS_G_System_INSTALLED_SOFTWARE.ResourceID = SMS_R_System.ResourceId
WHERE SMS_G_System_INSTALLED_SOFTWARE.ProductName LIKE "%WinRAR%";