explain plan for select * from ( select cast(create_date as timestamp) create_date from voter_parquet limit 10 ) t limit 0;
