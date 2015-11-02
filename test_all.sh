./bin/impala-shell.sh -f testcase.sql -o tmpoutput &> test.log

DIFF=$(diff -B tmpoutput output.txt)

if [ "$DIFF" != "" ] 
then
    echo "Some test case faild, the details are\n"
    echo $DIFF
else
    echo "All test case passed!"
fi

