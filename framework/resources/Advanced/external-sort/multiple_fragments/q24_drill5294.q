ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 601273600;
select count(*) from (select * from dfs.`/drill/testdata/resource-manager/250wide_files` d where cast(d.columns[1] as int) > 0 order by columns[0]) d1 where d1.columns[0] = 'kjhf';
ALTER SESSION SET `exec.sort.disable_managed` = true;
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
