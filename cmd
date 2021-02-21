startCDH.sh
jps
ls
cd Desktop
hdfs dfs -ls /
hdfs dfs -mkdir /input
hdfs dfs -put WordCount.txt /input
hadoop jar WordCount.jar WordCount /input/WordCount.txt /ouput/one
pwd
