UNLOAD
("SELECT * FROM employee")
TO 's3://lina-redshift-output/test_' -- bucket/prefix
iam_role 'arn:aws:iam::274304242375:role/RedshiftClusterRole'
DELIMITER ','
ADDQUOTES
ALLOWOVERWRITE
PARALLEL OFF;

--https://docs.aws.amazon.com/redshift/latest/dg/c_sampledb.html