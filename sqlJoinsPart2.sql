/*Part 2
Determine which products are most popular with our customers.
For each product, list the total quantity ordered along with the total sale generated 
(total quantity ordered * priceEach) for that product.
The column headers should be Product Name, Total # Ordered and Total Sale.
List the products by Total Sale descending.*/

SELECT p.productName AS "Product Name", SUM(od.quantityOrdered) AS "Total # Ordered", (SUM(od.quantityOrdered)*od.priceEach) AS "Total Sale"
FROM products p 
JOIN orderdetails od
ON p.productCode = od.productCode
GROUP BY p.productName
ORDER BY SUM(od.quantityOrdered)*od.priceEach DESC;

/*SELECT p.productName AS "Product Name", COUNT(p.productCode) AS "Total # Ordered", (COUNT(p.productCode) * od.priceEach) AS "Total Sale" 
FROM customers c, orders o, orderdetails od, products p
WHERE c.customerNumber = o.customerNumber
AND o.orderNumber = od.orderNumber
AND od.productCode = p.productCode
GROUP BY p.productCode
ORDER BY "Total Sale" DESC;*/
/*SELECT p.productName AS "Product Name", SUM(od.quantityOrdered) AS "Total # Ordered", (SUM(od.quantityOrdered)*od.priceEach) AS "Total Sale"
FROM products p 
JOIN orderdetails od
ON p.productCode = od.productCode
GROUP BY p.productCode
ORDER BY "ToTal Sale" DESC;*/
/*SELECT productcode, quantityOrdered FROM orderdetails
GROUP BY productCode
HAVING productCode = "S10_1678";*/
/*SELECT productcode, sum(quantityOrdered) FROM orderdetails
WHERE  productcode = "S10_1678";*/

