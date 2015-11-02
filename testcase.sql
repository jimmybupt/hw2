--Hw2 step by step test
--Before start test, please copy 'test1.csv' and 'test2.csv'
--into /home/dev/csv/

--Set switch
SET ENABLE_CUSTOM_SCAN = true;

--Test if scan node is working
SELECT * FROM extest ORDER BY id;

--Test predicate and projection
SELECT id, col_4, col_2 FROM extest WHERE id >= 3 AND col_1 = true;

--Test limit
SELECT col_1 FROM extest WHERE id > 1 AND id < 5 LIMIT 2;

--Test escaped char and corrupted/missing item
DROP TABLE IF EXISTS test1;

CREATE EXTERNAL TABLE test1 (id INT, s STRING) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/home/dev/csv/';

SELECT * FROM test1;

DROP TABLE test1;

--Test big table
DROP TABLE IF EXISTS test2;

CREATE EXTERNAL TABLE test2 (id INT, s STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/home/dev/csv/';

SELECT * FROM test2 ORDER BY id;

DROP TABLE test2;
