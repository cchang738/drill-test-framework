select f.c_custkey, f.c_name, min(f.o.o_totalprice) from (select c_custkey, c_name, flatten(c_orders) as o from customer) f group by f.c_custkey, f.c_name order by f.c_custkey limit 50;
