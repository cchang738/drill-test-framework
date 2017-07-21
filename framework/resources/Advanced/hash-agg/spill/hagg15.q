use hive.hive_hagg;
alter session set `planner.width.max_per_node` = 2;
select row_count, sum(row_count), avg(double_field), max(double_rand), count(float_rand) from parquet_500m_v1 group by row_count order by row_count limit 30;
alter session set `planner.width.max_per_node` = 17;
use dfs.drillTestDir;
