/*Part 3
Write a query which lists order status and the # of orders with that status.
Column headers should be Order Status and # Orders.
Sort alphabetically by status.*/
SELECT STATUS AS "Order Status", COUNT(ordernumber) AS "# of orders"
FROM orders
GROUP BY STATUS
ORDER BY STATUS ASC;