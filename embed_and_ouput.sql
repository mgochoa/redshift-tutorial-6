-- Crear una nueva tabla para unir la información
CREATE TABLE combined_info AS
SELECT
    u.USERNAME,
    u.LASTNAME,
    u.EMAIL,
    e.EVENTNAME,
    v.VENUENAME,
    d.CALDATE AS EVENTDATE,
    l.NUMTICKETS AS Cantidad,
    l.TOTALPRICE AS TotalVendidos
FROM
    listing l
    JOIN
    users u ON l.SELLERID = u.USERID
    JOIN
    event e ON l.EVENTID = e.EVENTID
    JOIN
    venue v ON e.VENUEID = v.VENUEID
    JOIN
    date d ON l.DATEID = d.DATEID;

-- Exportar la tabla combinada a un archivo CSV en S3
UNLOAD
('SELECT * FROM combined_info')
TO 's3://tu-bucket/tu-archivo-prefix'
iam default
DELIMITER ','
ADDQUOTES
ALLOWOVERWRITE
PARALLEL OFF;