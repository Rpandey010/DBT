-- Lets try to pull in data from sources, use sources to pull in data from the source
-- This SQL code is selecting all columns from the orders table in the tpch schema. 
-- The {{ source('tpch', 'orders') }} part is a dbt macro that references the orders table 
-- in the tpch schema, ensuring that the correct table is used based on the source configuration in your dbt project.
--  do dbt run 
-- after running, you can check the data in the orders table in the tpch schema in the snowflake database

select 
    o_orderkey as order_key,
    o_custkey as customer_key,
    o_orderstatus as order_status,
    o_totalprice as total_price,
    o_orderdate as order_date
from 
    {{ source('tpch', 'orders') }}