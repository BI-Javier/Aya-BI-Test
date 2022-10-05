SELECT
	o.*
FROM
    pizza.orders o
        left join pizza.order_details od on o.order_id = od.order_id
            left join pizza.pizzas pz on od.pizza_id = pz.pizza_id
WHERE
    0 = 0
	AND pz.pizza_type_id = 'hawaiian'