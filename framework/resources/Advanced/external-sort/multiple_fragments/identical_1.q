ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.width.max_per_query` = 10;
alter session set `planner.width.max_per_node` = 5;
select col11 from (select * from dfs.`/drill/testdata/resource-manager/identical1` order by col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11 desc) d where d.col11 < 10;
ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
alter session set `planner.width.max_per_query` = 1000;
alter session set `planner.width.max_per_node` = 17;
