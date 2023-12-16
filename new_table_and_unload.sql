CREATE TABLE combined_info AS
SELECT
    u.username,
    u.lastname,
    u.email,
    e.eventname,
    s.saletime AS venta_date,
    SUM(s.qtysold) AS cantidad,
    SUM(s.pricepaid) AS totalvendidos
FROM
    sales s
JOIN
    users u ON s.sellerid = u.userid
JOIN
    event e ON s.eventid = e.eventid
GROUP BY
    u.username,
    u.lastname,
    u.email,
    e.eventname,
    s.saletime;

-- exportar a s3

UNLOAD ('SELECT * FROM combined_info')
TO 's3://s3://output-dataknow-test/output/'
IAM_ROLE default
DELIMITER ','
ALLOWOVERWRITE
PARALLEL OFF;
