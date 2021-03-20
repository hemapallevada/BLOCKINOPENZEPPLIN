startCDH.sh
jps
ls
cd Desktop
hdfs dfs -ls /
hdfs dfs -mkdir /input
hdfs dfs -put WordCount.txt /input
hadoop jar WordCount.jar WordCount /input/WordCount.txt /ouput/one
pwd
****************
lines= LOAD '/user/hadoop/HDFS_File.txt' AS (line:chararray);
words=FOREACH lines GENERATE FLATTEN(TOKENIZE(line)) as word;
grouped=GROUP words BY word;
wordcount=FOREACH rouped GENERATEgroup, COUNT(words);
DUMP wordcount;
***********************
hbase shell
create 'student','col1','col2'
list 'student'
put 'student', '001','col1:colsub1','hema'
scan  'student'
get 'student','001'
quit
stop-hbase.sh
stopCDH.sh
*************************
hive
create schema vrsec
create database student
use student
create table marks(regno string sub1 int, sub2 int,sub3 int)
load data inpath '/hivefile.txt' overwrite into table marks
describe marks
