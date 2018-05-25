select l.c_custkey, l.c_name, r.orderkey, r.totalprice from dfs.`/drill/testdata/tpch_customer_complex.json` l left outer join (select g.custkey custkey, g.name, g.orderkey, g.totalprice totalprice from (select row_number() over(partition by c_custkey) as rn, f.c_custkey custkey, f.c_name name, f.o.o_orderkey orderkey, f.o.o_totalprice totalprice from (select c_custkey, c_name, flatten(c_orders) as o from dfs.`/drill/testdata/tpch_customer_complex.json`) f where f.o.o_totalprice > 1000) g where rn < 2001) r on (l.c_custkey = r.custkey) order by l.c_custkey, r.totalprice limit 50;
