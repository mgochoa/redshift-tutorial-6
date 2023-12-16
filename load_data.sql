copy users from 's3://output-dataknow-test/input_pipes/allusers_pipe.txt' 
iam_role default
delimiter '|' region 'us-east-2';

copy users from 's3://output-dataknow-test/input_pipes/allusers_pipe.txt' 
iam_role default
delimiter '|' region 'us-east-2';


copy venue from 's3://output-dataknow-test/input_pipes/venue_pipe.txt' 
iam_role default
delimiter '|' region 'us-east-2';

copy date from 's3://output-dataknow-test/input_pipes/date2008_pipe.txt' 
iam_role default
delimiter '|' region 'us-east-2';


copy event from 's3://output-dataknow-test/input_pipes/allevents_pipe.txt' 
iam_role default
delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region 'us-east-2';

copy listing from 's3://output-dataknow-test/input_pipes/listings_pipe.txt' 
iam_role default
delimiter '|' region 'us-east-2';

copy sales from 's3://output-dataknow-test/input_pipes/sales_tab.txt'
iam_role default
delimiter '\t' timeformat 'MM/DD/YYYY HH:MI:SS' region 'us-east-2';
