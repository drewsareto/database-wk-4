-- answers.sql
-- Advanced SQL Queries and Aggregations

/* 
Question 1
Show the total payment amount for each payment date from payments table.
Sort by payment date in descending order.
Show only the top 5 latest payment dates.
*/
SELECT 
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


/* 
Question 2
Find the average credit limit of each customer from customers table.
Display the customer name, country, and average credit limit.
Group the results by customer name and country.
*/
SELECT 
    customerName,
    country,
    AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;


/* 
Question 3
Find the total price of products ordered from orderdetails table.
Display the product code, quantity ordered, and the total price for each product.
Group the results by product code and quantity ordered.
(Note: total price = quantityOrdered * priceEach)
*/
SELECT 
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


/* 
Question 4
Find the highest payment amount for each check number from payments table.
Display the check number and the highest amount paid.
Group the results by check number.
*/
SELECT 
    checkNumber,
    MAX(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;
