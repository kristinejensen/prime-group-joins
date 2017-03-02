--Get all customers and their addresses.

SELECT *
FROM customers
JOIN addresses ON addresses.customer_id=customers.id;


--Get all orders and their line items.

SELECT *
FROM orders
JOIN line_items ON line_items.order_id=orders.id;

--Which warehouses have cheetos?

SELECT *
FROM warehouse_product
WHERE product_id=5;

--Which warehouses have diet pepsi?

SELECT *
FROM warehouse_product
WHERE product_id=6;

--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

SELECT count(*)
FROM customers
JOIN addresses ON addresses.customer_id=customers.id
JOIN orders ON orders.address_id=addresses.id
GROUP BY customers;

-- How many customers do we have?

SELECT count(*)
FROM customers;

-- How many products do we carry?

SELECT count(*)
FROM products;

-- What is the total available on-hand quantity of diet pepsi?
