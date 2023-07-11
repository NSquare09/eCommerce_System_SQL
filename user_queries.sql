--to register a new customer on the platform.
INSERT INTO Customers (cust_id, name, email, phone, password, billing_address)
VALUES (11, 'Naman Nishesh', 'naman@email.com', '7788669900', 'nishesh123', '4140,Shankar');

INSERT INTO customer_address (billing_address, cust_id)
VALUES ('4140,Shankar', 11);

SELECT customers.cust_id,customers.name,customers.email,customers.phone,customers.password,customers.payment_method
FROM customers
JOIN customer_address
ON customers.cust_id = customer_address.cust_id
WHERE customers.cust_id = 11;

-- Write a query to show all products in a specific category: clothing
-- the cat_id of clothing is 2
SELECT *
FROM products
WHERE cat_id = 2;

-- Write a query to recommend similar products to the one a customer just purchased:
-- Assuming that the product the customer just purchased has a prod_id of 1
SELECT *
FROM Products
WHERE cat_id = (SELECT cat_id FROM Products WHERE prod_id = 1) AND prod_id <> 1;

-- Write a query to show status of any order:
-- Assuming that the order_id of the order in question is 1.
SELECT status
FROM Orders
WHERE order_id = 1;

-- Write a query to update the billing address of a customer:
-- Assuming that the customer's cust_id is 1 and their new billing address is '121, BITS,Pilani'.
UPDATE Customer_Address
SET billing_address = '121, BITS,Pilani'
WHERE cust_id = 1;

SELECT billing_address
FROM customer_address
WHERE cust_id = 1;

-- Write a query to show details of a product:
-- Assuming that the product_id of the product in question is 1
SELECT Products.prod_id, Products.name, Products.description, Products.price, Products.onsale, Category.cat_name
FROM Products
INNER JOIN Category ON Products.cat_id = Category.cat_id
WHERE Products.prod_id = 1;

-- To suggest products that are currently on sale:
SELECT Products.prod_id, Products.name, Products.description, Products.price
FROM Products
WHERE onsale = 'yes';

-- To add a product to my cart:
INSERT INTO Cart (cust_id, prod_id, quantity)
VALUES (1, 6, 2);

SELECT *
FROM cart
WHERE cust_id = 1;

-- Write a query to place an order using a coupon code:
-- Assuming that the coupon code provides a 10% discount on the order with order_id 1
UPDATE Orders
SET status = 'completed'
WHERE order_id = 1;

UPDATE Payments
SET amount = amount * 0.9, status = 'paid with coupon'
WHERE order_id = 1;

SELECT *
FROM orders
WHERE order_id = 1;

SELECT *
FROM payments
WHERE order_id = 1;

-- Write a query to cancel an order
-- Assuming that the order with order_id 2 has been returned and the payment has been refunded.
UPDATE Orders o, Payments p
SET o.status = 'returned', p.status = 'refunded'
WHERE o.order_id = p.order_id AND o.order_id = 2;

SELECT *
FROM orders
WHERE order_id = 2;

SELECT *
FROM payments
WHERE order_id = 2;

-- Write a query to see the order history of customer:
SELECT Orders.order_id, Orders.order_date, Orders.total_amount, Orders.status
FROM Orders
WHERE Orders.cust_id = 1;

-- Write a query to show products that are currently trending on the platform.
SELECT p.prod_id, p.name, COUNT(*) as num_orders
FROM Products p
JOIN Order_Items oi ON p.prod_id = oi.prod_id
JOIN Orders o ON oi.order_id = o.order_id
WHERE o.order_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
GROUP BY p.prod_id
ORDER BY num_orders DESC;

-- Write a query to update the quantity of a product in the cart.
UPDATE Cart
SET quantity = 5
WHERE cust_id = 1 AND prod_id = 5;

-- Retrieve the average rating for a specific product:
SELECT AVG(rating) FROM Reviews WHERE prod_id = 2;

-- Retrieve all reviews for a specific product:
SELECT * FROM Reviews WHERE prod_id = 2;















