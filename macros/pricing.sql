-- What is a Macro in dbt?
-- A macro in dbt is a reusable SQL snippet or function defined using Jinja, a templating language. 
-- Macros help to avoid repetition and make SQL code more modular and maintainable.

{% macro discounted_amount(extended_price, discount_percentage, scale=2) %}
    (-1 * {{extended_price}} * {{discount_percentage}})::decimal(16, {{ scale }})
{% endmacro %}


-- This macro, discounted_amount, calculates the discounted amount 
-- by multiplying the extended_price by the discount_percentage and 
-- converting the result to a decimal with a specified scale.