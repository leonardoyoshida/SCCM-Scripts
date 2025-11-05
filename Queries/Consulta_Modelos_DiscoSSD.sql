-- Nome: Consulta de Modelos de Disco Físico
-- Autor: Leonardo Oliveira Yoshida
-- Descrição: Lista modelos distintos de discos físicos com MediaType = 4 (SSD).
-- Data: 2025-11-05

SELECT DISTINCT SMS_G_System_PHYSICAL_DISK.Model
FROM SMS_G_System_PHYSICAL_DISK
WHERE SMS_G_System_PHYSICAL_DISK.MediaType = 4;
