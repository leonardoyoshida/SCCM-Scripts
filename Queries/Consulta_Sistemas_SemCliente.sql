-- Nome: Consulta de Sistemas sem Cliente SCCM
-- Autor: Leonardo Oliveira Yoshida
-- Descrição: Lista dispositivos SCCM que não possuem cliente instalado ou estão com status nulo.
-- Data: 2025-11-05

SELECT SMS_R_System.Name,
       SMS_R_System.SMSAssignedSites,
       SMS_R_System.IPAddresses,
       SMS_R_System.IPSubnets,
       SMS_R_System.OperatingSystemNameandVersion,
       SMS_R_System.ResourceDomainORWorkgroup,
       SMS_R_System.LastLogonUserDomain,
       SMS_R_System.LastLogonUserName,
       SMS_R_System.SMSUniqueIdentifier,
       SMS_R_System.NetbiosName,
       SMS_R_System.CreationDate
FROM SMS_R_System
WHERE SMS_R_System.Client = 0 OR SMS_R_System.Client IS NULL;
