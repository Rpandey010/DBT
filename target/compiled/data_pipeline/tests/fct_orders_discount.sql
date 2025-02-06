select
    *
from
    dbt_db.dbt_schema.fct_order
where
    item_discount_amount < 0