use hive.hive_hagg;
select gby_int32, gby_date, gby_int32_rand, sum(int32_field), avg(float_field), min(boolean_field), count(double_rand) from parquet_500m_v1 group by gby_int32, gby_date, gby_int32_rand order by gby_int32, gby_date, gby_int32_rand limit 30;
use dfs.drillTestDir;
