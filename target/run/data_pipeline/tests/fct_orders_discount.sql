select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select
    *
from
    dbt_db.dbt_schema.fct_order
where
    item_discount_amount < 0
      
    ) dbt_internal_test