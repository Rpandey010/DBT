select
    order_item_key,
    order_key,
    sum(extended_price) as gross_item_sales_amount,
    sum(discount_percentage * extended_price) as item_discount_amount
from
    {{ ref('stg_tpch_line_items') }}
group by
    order_item_key,
    order_key