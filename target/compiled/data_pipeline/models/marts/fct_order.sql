-- select
--     orders.*,
--     order_item_summary.gross_item_sales_amount,
--     order_item_summary.item_discount_amount
-- from 
--     dbt_db.dbt_schema.stg_tpch_orders as orders 
-- join 
--     dbt_db.dbt_schema.int_order_items_summary as order_item_summary
-- on orders.order_key = order_item_summary.order_key
-- order by 
--     order_date

-- DESCRIBE TABLE dbt_schema.stg_tpch_orders;
-- name
-- ORDER_KEY
-- CUSTOMER_KEY
-- ORDER_STATUS
-- TOTAL_PRICE
-- ORDER_DATE

select
    orders.order_key,
    orders.customer_key,
    orders.order_status,  -- Corrected column name
    orders.total_price,
    orders.order_date,
    order_item_summary.gross_item_sales_amount,
    order_item_summary.item_discount_amount
from 
    dbt_db.dbt_schema.stg_tpch_orders as orders 
join 
    dbt_db.dbt_schema.int_order_items_summary as order_item_summary
on orders.order_key = order_item_summary.order_key
order by 
    order_date