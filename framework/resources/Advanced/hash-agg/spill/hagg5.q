alter session set `planner.width.max_per_node` = 17;
select gby_date, gby_int32_rand, sum(int32_field), avg(float_field), min(boolean_field), count(double_rand) from dfs.`/drill/testdata/hagg/PARQUET-500M.parquet` group by gby_date, gby_int32_rand order by gby_date, gby_int32_rand limit 30;
alter session set `planner.width.max_per_node` = 17;
