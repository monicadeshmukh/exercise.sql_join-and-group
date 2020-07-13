/*Part 4
Write a query to list, for each product line, the total # of products sold from that product line.
The first column should be Product Line and the second should be # Sold.
Order by the second column descending.*/
SELECT productline AS "Product Line", COUNT(productcode) AS "# Sold"
FROM products
GROUP BY productline
ORDER BY COUNT(productcode) DESC;