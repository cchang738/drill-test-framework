ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.width.max_per_node` = 3;
alter session set `planner.disable_exchanges` = true;
alter session set `planner.width.max_per_query` = 50;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
select count(*) from (
select * from (
  select kvgen(flatten(bldgs)) col from (
    select kvgen(geo.features[0].location.bldgs) bldgs from  dfs.`/drill/testdata/resource-manager/nested-large.json` geo
  )
) d order by d.col[0].`value`) d1 where d1.col[0].`value` = 'alksjhf';
ALTER SESSION SET `exec.sort.disable_managed` = true;
alter session set `planner.width.max_per_node` = 17;
alter session set `planner.disable_exchanges` = false;
alter session set `planner.width.max_per_query` = 1000;
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
