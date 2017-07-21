select row_count, sum(row_count), avg(double_field), max(double_rand), count(float_rand) from dfs.`/drill/testdata/hagg/PARQUET-500M-V1.parquet` group by row_count order by row_count limit 30;
