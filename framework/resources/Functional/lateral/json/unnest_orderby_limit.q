select customer.c_custkey, customer.c_name, orders.o.o_orderkey, orders.o.o_totalprice from customer, lateral (select * from unnest(customer.c_orders) t(o) order by t.o.o_orderkey, t.o.o_totalprice limit 10) orders order by customer.c_custkey, orders.o.o_orderkey, orders.o.o_totalprice limit 50;
