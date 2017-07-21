use hive.hive_hagg;
select row_count, sum(row_count), avg(double_field), max(double_rand), count(float_rand) from parquet_500m_v1 group by row_count order by row_count limit 30;
use dfs.drillTestDir;
