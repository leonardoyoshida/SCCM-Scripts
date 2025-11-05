SELECT
    SMS_R_System.ResourceId,
    SMS_R_System.ResourceType,
    SMS_R_System.Name,
    SMS_R_System.SMSUniqueIdentifier,
    SMS_R_System.ResourceDomainORWorkgroup,
    SMS_R_System.Client,
    SMS_R_System.ADSiteName,
    SMS_G_System_INSTALLED_SOFTWARE.ProductVersion
FROM
    SMS_R_System
    INNER JOIN SMS_G_System_ADD_REMOVE_PROGRAMS_64
        ON SMS_G_System_ADD_REMOVE_PROGRAMS_64.ResourceID = SMS_R_System.ResourceId
    INNER JOIN SMS_G_System_INSTALLED_SOFTWARE
        ON SMS_G_System_INSTALLED_SOFTWARE.ResourceId = SMS_R_System.ResourceId
WHERE
    SMS_G_System_ADD_REMOVE_PROGRAMS_64.DisplayName LIKE "%Mozilla Firefox%