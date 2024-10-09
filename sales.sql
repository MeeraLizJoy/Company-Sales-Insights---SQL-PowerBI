SELECT * FROM sales.customers;

SELECT * FROM sales.transactions;

SELECT * FROM sales.products;

SELECT * FROM sales.markets;

SELECT * FROM sales.date;

SELECT * FROM sales.transactions limit 5;

SELECT COUNT(*) FROM sales.transactions;

SELECT COUNT(*) FROM sales.customers;

SELECT * 
FROM sales.transactions 
WHERE market_code = 'Mark001';

SELECT * 
FROM sales.transactions 
WHERE currency = 'USD';

SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions
INNER JOIN sales.date 
    ON sales.transactions.order_date = sales.date.date;
    
SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions
INNER JOIN sales.date 
    ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020;

SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date 
    ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020;

SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date 
    ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020
    AND sales.transactions.market_code = 'Mark001';
    
SELECT DISTINCT product_code 
FROM sales.transactions
WHERE market_code = 'Mark001';