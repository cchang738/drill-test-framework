$DRILL_HOME/bin/sqlline -n root -p mapr -u "jdbc:drill:schema=dfs.tpch_maprdb"  < resources/Datasources/tpch_maprdb/dropViews.sql
$DRILL_HOME/bin/sqlline -n root -p mapr -u "jdbc:drill:schema=dfs.tpch_maprdb"  < resources/Datasources/tpch_maprdb/createViews.sql
