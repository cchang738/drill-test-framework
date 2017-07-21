select gby_date, sum(row_count), avg(double_field), max(double_rand), count(float_rand) from dfs.`/drill/testdata/hagg/PARQUET-500M-V1.parquet` group by gby_date order by gby_date limit 30;
