/*Part 6
Your product team is requesting data to help them create a bar-chart of monthly sales since the company’s inception.
Write a query to output the month (January, February, etc.), 4-digit year, and total sales for that month.
The first column should be labeled Month, the second Year, and the third should be Payments Received.
Values in the third column should be formatted as numbers with two decimals – for example: 694,292.68.*/
SELECT EXTRACT(MONTH FROM paymentDate) AS Month, EXTRACT(YEAR FROM paymentDate) Year, FORMAT(SUM(amount), 2) AS 'Payments Received'
FROM payments
GROUP BY Month, YEAR
