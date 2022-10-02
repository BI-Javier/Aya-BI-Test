-- Use the `ref` function to select from other models

select *
from "PizzaDB"."pizza"."my_first_dbt_model"
where id = 1