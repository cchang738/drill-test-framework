alter session set `planner.width.max_per_node` = 1;
select inv_date_sk, inv_item_sk, inv_warehouse_sk, sum(inv_quantity_on_hand) from dfs.`/drill/testdata/tpcds_sf100/parquet/inventory` group by inv_date_sk, inv_item_sk, inv_warehouse_sk limit 10;
alter session set `planner.width.max_per_node` = 17;
