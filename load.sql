copy users from 's3://<myBucket>/tickit/allusers_pipe.txt' 
iam_role default
delimiter '|' region '<aws-region>';


copy users from 's3://<myBucket>/tickit/allusers_pipe.txt' 
iam_role default
delimiter '|' region '<aws-region>';

copy users from 's3://<myBucket>/tickit/allusers_pipe.txt' 
iam_role default 
delimiter '|' region '<aws-region>';


copy venue from 's3://<myBucket>/tickit/venue_pipe.txt' 
iam_role default
delimiter '|' region '<aws-region>';

copy date from 's3://<myBucket>/tickit/date2008_pipe.txt' 
iam_role default
delimiter '|' region '<aws-region>';


copy event from 's3://<myBucket>/tickit/allevents_pipe.txt' 
iam_role default
delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region '<aws-region>';

copy listing from 's3://<myBucket>/tickit/listings_pipe.txt' 
iam_role default
delimiter '|' region '<aws-region>';

copy sales from 's3://<myBucket>/tickit/sales_tab.txt'
iam_role default
delimiter '\t' timeformat 'MM/DD/YYYY HH:MI:SS' region '<aws-region>';
