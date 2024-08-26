/*Group the orders by date and calculate the average number of pizzas ordered per day.*/
SELECT 
    AVG(quantity)
FROM
    (SELECT 
        orders.order_date, SUM(order_detail.quantity) AS quantity
    FROM
        orders
    JOIN order_detail ON orders.order_id = order_detail.order_id
    GROUP BY orders.order_date) AS order_quantity;