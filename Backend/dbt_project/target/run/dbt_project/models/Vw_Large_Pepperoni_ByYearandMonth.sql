
  create view "PizzaDB"."pizza"."Vw_Large_Pepperoni_ByYearandMonth__dbt_tmp" as (
    SELECT
	extract(YEAR from o.date) as year,
	extract(month from o.date) as month_num,
	to_char(o.date, 'Month') as month,
	COUNT(distinct o.order_id) as totalOrders,
	SUM(od.quantity) as quantity
FROM
    pizza.orders o
        left join pizza.order_details od on o.order_id = od.order_id
            left join pizza.pizzas pz on od.pizza_id = pz.pizza_id
WHERE
    0 = 0
	AND pz.pizza_id = 'pepperoni_l'
GROUP BY
    extract(YEAR from o.date), extract(month from o.date),to_char(o.date, 'Month')
ORDER BY
    year, extract(month from o.date)

<<<<<<< HEAD
---comments --update comments --More comments mmmmmoooreeeeeeee EVEN MOOOREEE
=======
---comments
>>>>>>> 64bbcf0 (Add: My dev branch)
  );