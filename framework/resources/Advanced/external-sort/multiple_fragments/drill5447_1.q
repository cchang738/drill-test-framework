ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.width.max_per_node` = 5;
alter session set `planner.disable_exchanges` = true;
alter session set `planner.width.max_per_query` = 100;
<<<<<<< HEAD
=======
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
>>>>>>> dd5af88... Enable more single and multiple fragment tests for managed external sort feature.
select count(*) from (select * from (select id, flatten(str_list) str from dfs.`/drill/testdata/resource-manager/flatten-large-small.json`) d order by d.str) d1 where d1.id=0;
ALTER SESSION SET `exec.sort.disable_managed` = true;
alter session set `planner.width.max_per_node` = 17;
alter session set `planner.disable_exchanges` = false;
alter session set `planner.width.max_per_query` = 1000;
alter session set `planner.memory.max_query_memory_per_node` = 2147639296;
