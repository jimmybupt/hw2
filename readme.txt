5242 Homework 2

Before test, you need to copy test1.csv and test2.csv into ~/csv/

For automatic test, run ./test_all.sh

The new scan node use a for loop inside InternalGetNext function to read lines from csv file. Each line is send to ParseAndFill
function. This function is added by me and it breaks a row into tokens and write each of them into allocated memory.

My implementation supports '\' to escape ',' character. Will fill column using NULL when the parser failed or not enough token
is provided. 
