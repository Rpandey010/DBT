select
    *
from
    dbt_db.dbt_schema.fct_order
where
    date(order_date) > CURRENT_DATE()
    or date(order_date) < date('1990-01-01')