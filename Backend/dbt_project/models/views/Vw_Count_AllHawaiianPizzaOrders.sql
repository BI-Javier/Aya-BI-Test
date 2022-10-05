SELECT
    count(distinct h.order_id) as CountOfPizzas
FROM
    "Vw_All_Hawaiian_Orders" h