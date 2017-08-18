ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.width.max_per_query` = 25;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.width.max_per_node` = 17;
select count(*) from (select * from dfs.`/drill/testdata/resource-manager/md1362` order by c_email_address) d ;
ALTER SESSION SET `exec.sort.disable_managed` = TRUE;
alter session set `planner.width.max_per_query` = 1000;
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
alter session set `planner.width.max_per_node` = 17;
