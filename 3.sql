/*Identify the most common pizza size ordered.*/

SELECT 
    pizzas.size,
    COUNT(order_detail.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_detail ON pizzas.pizza_id = order_detail.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;