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
