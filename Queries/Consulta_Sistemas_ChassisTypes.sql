-- Nome: Consulta de Sistemas por Tipo de Chassis
-- Autor: Leonardo Oliveira Yoshida
-- Descrição: Lista dispositivos SCCM com tipos de chassis específicos (8, 9, 10, 14), incluindo informações de sistema e modelo.
-- Data: 2025-11-05

SELECT SMS_R_System.ResourceId,
       SMS_R_System.ResourceType,
       SMS_R_System.Name,
       SMS_R_System.SMSUniqueIdentifier,
       SMS_R_System.ResourceDomainORWorkgroup,
       SMS_R_System.Client,
       SMS_G_System_COMPUTER_SYSTEM.Model,
       SMS_R_System.OperatingSystemNameandVersion
FROM SMS_R_System
INNER JOIN SMS_G_System_SYSTEM_ENCLOSURE
    ON SMS_G_System_SYSTEM_ENCLOSURE.ResourceID = SMS_R_System.ResourceId
INNER JOIN SMS_G_System_COMPUTER_SYSTEM
    ON SMS_G_System_COMPUTER_SYSTEM.ResourceID = SMS_R_System.ResourceId
WHERE SMS_G_System_SYSTEM_ENCLOSURE.ChassisTypes IN ("8","9","10","14");
