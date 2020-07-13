/*Part 1
Write a query to display each customer’s name (asCustomer Name) alongside the name of the employee
who is responsible for that customer’s orders.
The employee name should be in a single Sales Rep column formatted as lastName, firstName. 
The output should be sorted alphabetically by customer name.*/

SELECT c.customerName AS "Customer Name", CONCAT (e.lastName, ' ', e.firstname) AS "Sales Rep"
FROM customers c INNER JOIN  employees e
ON c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY c.customerName DESC; 
