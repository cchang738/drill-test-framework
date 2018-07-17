select ff.c_custkey, ff.c_name, ff.o_orderkey,  ff.orderamount, count(ff.l.l_partkey) as l_items, sum(ff.l.l_quantity * ff.l.l_extendedprice) as l_costs from (select f.c_custkey c_custkey, f.c_name c_name, f.o.o_orderkey o_orderkey, f.o.o_totalprice as orderamount, flatten(f.o.o_lineitems) as l from (select c_custkey, c_name, flatten(c_orders) as o from customer) f) ff group by ff.c_custkey, ff.c_name, ff.o_orderkey,  ff.orderamount order by ff.c_custkey, ff.o_orderkey, ff.orderamount, l_items, l_costs limit 50;
