ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 10737418240;
alter session set `planner.width.max_per_query` = 10;
alter session set `planner.width.max_per_node` = 5;
select count(*) from (
select * from (
select event_info.uid, transaction_info.trans_id, event_info.event.evnt_id evnt_id, event_info.event
from (
 select userinfo.transaction.trans_id trans_id, max(userinfo.event.event_time) max_event_time
 from (
     select uid, flatten(events) event, flatten(transactions) transaction from dfs.`/drill/testdata/resource-manager/nested_large`
 ) userinfo
 where userinfo.transaction.trans_time >= userinfo.event.event_time
 group by userinfo.transaction.trans_id
) transaction_info
inner join
(
 select uid, flatten(events) event, features
 from dfs.`/drill/testdata/resource-manager/nested_large`
) event_info
on transaction_info.max_event_time = event_info.event.event_time) d order by d.event.evnt_id, d.evnt_id) d1 where d1.uid < -1;
ALTER SESSION SET `exec.sort.disable_managed` = true;
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
alter session set `planner.width.max_per_query` = 1000;
alter session set `planner.width.max_per_node` = 17;
