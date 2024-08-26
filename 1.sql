/*Calculate the total revenue generated from pizza sales.*/

select * from pizzas;

SELECT 
    ROUND(SUM(order_detail.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_detail
        JOIN
    pizzas ON pizzas.pizza_id = order_detail.pizza_id;