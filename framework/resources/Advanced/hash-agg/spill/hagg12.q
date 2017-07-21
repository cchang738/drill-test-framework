select gby_same, avg(row_count), sum(int32_field), count(gby_date), sum(double_field), avg(double_rand) from dfs.`/drill/testdata/hagg/PARQUET-500M-V1.parquet` group by gby_same;
