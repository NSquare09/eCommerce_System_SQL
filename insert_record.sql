INSERT INTO Customers (cust_id, name, email, phone, password, Payment_method)
VALUES
  (1, 'Abhinav Mishra', 'abhinav@gmail.com', '7903502222', 'qwerty123', 'UPI'),
  (2, 'Nishesh Naman', 'nishesh@gmail.com', '7903502223', 'hello123', 'VISA Credit Card'),
  (3, 'Kartik Rao', 'kartik@gmail.com', '7903502224', 'bruno666', 'COD'),
  (4, 'Sahil Gupta', 'sahil@gmail.com', '7903502225', 'sahilaer123', 'Mastercard Credit Card'),
  (5, 'Aman Phogat', 'phogat@gmail.com', '790350226', 'amanaman1212', 'UPI'),
  (6, 'Umang Agarwal', 'umang@gmail.com', '7903502337', 'umanghere66', 'SBI Debit Card'),
  (7, 'Devansh Sharma', 'devansh@gmail.com', '7903502338', 'devsar22', 'Kotak Debit Card'),
  (8, 'Abhijeet Jha', 'abhijeet@gmail.com', '7903502339', 'abhjha123', 'VISA Credit Card'),
  (9, 'Avikshit Jha', 'avikshit@gmail.com', '7903502333', 'avik123456', 'UPI'),
  (10, 'Tejas Tuli', 'tejas@gmail.com', '7903502245', 'tejas.123', 'COD');

-- Insert 10 records in Customer_Address
INSERT INTO Customer_Address (billing_address, cust_id)
VALUES
       ('House no. 31 Dharavai Mumbai',1),
       ('House no. 32 Golmuri Jamshedpur',2),
       ('House no. 67 Naya Bazar Bhiwani',3),
       ('House no. 45 Shashtri Nagar Delhi',4),
       ('House no. 65 Sector 32 Gurgaon',5),
       ('House no. 32 Ring Road Ranchi',6),
       ('House no. 22 Sector 28 Faridabad',7),
       ('House no. 12 Banjara Hills Hydrebad',8),
       ('House no. 69 Model Town Delhi',9),
       ('House no. 90 City Centre Pathankot',10);

-- Insert 10 records into Category
INSERT INTO Category (cat_id, cat_name)
VALUES
     (1, 'Electronics'),
     (2, 'Clothing'),
     (3, 'Accessories'),
     (4, 'Toiletries'),
     (5, 'Stationary'),
     (6, 'Sporting' ),
     (7, 'Footwear' ),
     (8, 'Juice'),
     (9, 'Grooming'),
     (10, 'Household');
 
-- Insert 10 records into Products
INSERT INTO Products (prod_id, name, description, onsale, price, cat_id)
VALUES
  (1, 'Puma Jacket', 'Black Puma Jacket SIZE:M', 'no', 2000.00, 2),
  (2, 'Tropicana Juice', 'Healthy orange juice 500ML', 'yes', 200.00, 8),
  (3, 'I-phone case', 'Transparent case for I-phone 13', 'no', 300.00, 3),
  (4, 'Garnier Men Face Wash', 'Face wash for acne prone skin', 'yes', 150.00, 4),
  (5, 'Biotique Green Apple Shampoo', 'Shampoo+conditioner for strong hair', 'no', 300.00, 4),
  (6, 'Levis Shirt', 'Stylish Blue and White Shirt SIZE: M', 'yes', 2000.00, 2),
  (7, 'Camlin Notebook', '300 Pages Both side ruled notebook', 'no', 120.00, 5),
  (8, 'BTWIN Bottle', '500ML Capacity Transparent bottle', 'yes', 150.00, 6),
  (9, 'Adidas Shoes', 'Durable black running shoes  SIZE:9', 'no', 5000.00, 7),
  (10, 'US Polo T Shirt', 'Comfortable and stylish red T shirt SIZE:M', 'yes', 1500.00, 2);

-- Insert 10 records into Stock
INSERT INTO Stock (prod_id, stock)
VALUES
  (1, 130),
  (2, 80),
  (3, 60),
  (4, 20),
  (5, 35),
  (6, 75),
  (7, 85),
  (8, 50),
  (9, 80),
  (10, 90);

-- Insert 10 records into Cart
INSERT INTO Cart (cust_id, prod_id, quantity)
VALUES
  (1, 5, 1),
  (1, 4, 2),
  (1, 3, 3),
  (2, 2, 4),
  (2, 1, 5),
  (2, 3, 1),
  (3, 5, 2),
  (3, 2, 3),
  (3, 4, 4),
  (4, 1, 5);

  -- Add records to the Orders table
INSERT INTO Orders (order_id, cust_id, order_date, total_amount, status)
VALUES
(1, 1, '2023-04-10', 100.00, 'Processing'),
(2, 2, '2023-04-09', 200.00 ,'Shipped'),
(3, 3, '2023-04-08', 150.00 ,'Delivered'),
(4, 4, '2023-04-07', 300.00 ,'Processing'),
(5, 5, '2023-04-07', 400.00 ,'Processing'),
(6, 6, '2023-04-08', 500.00 ,'Processing'),
(7, 7, '2023-04-09', 600.00 ,'Processing'),
(8, 8, '2023-04-10', 200.00 ,'Processing'),
(9, 9, '2023-04-10', 300.00 ,'Processing'),
(10, 10, '2023-04-10', 400.00, 'Processing');

-- Add records to the Shipping table
INSERT INTO Shipping (shipping_id, order_id, shipping_date, delivery_date, shipping_address)
VALUES
(1, 1, '2023-04-10', '2023-04-12', 'House no. 31 Dharavai Mumbai'),
(2, 2, '2023-04-09', '2023-04-11', 'House no. 32 Purana Bazar Bhiwani'),
(3, 3, '2023-04-08', '2023-04-10', 'House no. 32 Golmuri Jamshedpur'),
(4, 4, '2023-04-07', '2023-04-10', 'House no. 44 Tagore Nagar Delhi'),
(5, 5, '2023-04-06', '2023-04-09', 'House no. 65 Sector 32 Gurgaon'),
(6, 6, '2023-04-07', '2023-04-10', 'House no. 32 Ring Road Ranchi'),
(7, 7, '2023-04-08', '2023-04-11', 'House no. 22 Sector 28 Faridabad'),
(8, 8, '2023-04-09', '2023-04-11', 'House no. 12 Banjara Hills Hydrebad'),
(9, 9, '2023-04-10', '2023-04-11', 'House no. 77 GTB Nagar Delhi'),
(10, 10, '2023-04-10', '2023-04-12', 'House no. 90 City Centre Pathankot');


-- Add records to the Order_Items table
INSERT INTO Order_Items (order_id, prod_id, quantity_ordered)
VALUES
(1, 1, 2),
(2, 3, 1),
(3, 2, 3),
(4, 4, 1),
(5, 1, 1),
(6, 5, 2),
(7, 2, 1),
(8, 4, 1),
(9, 3, 1),
(10, 1, 1);


-- Add records to the Payments table
INSERT INTO Payments (payment_id, order_id, payment_date, amount, method, status)
VALUES
(1, 1, '2023-04-10', 00.00, 'COD', 'Pending'),
(2, 2, '2023-04-09', 200.00, 'VISA CC', 'Paid'),
(3, 3, '2023-04-08', 150.00, 'RUPAY DC', 'Paid'),
(4, 1, '2023-04-07', 00.00, 'COD', 'Pending'),
(5, 1, '2023-04-06', 00.00, 'COD', 'Pending'),
(6, 1, '2023-04-07', 00.00,'COD', 'Pending'),
(7, 1, '2023-04-08', 00.00, 'COD', 'Pending'),
(8, 1, '2023-04-09', 00.00, 'COD', 'Pending'),
(9, 1, '2023-04-10', 00.00, 'COD', 'Pending'),
(10, 1, '2023-04-10', 00.00, 'COD', 'Pending');

-- Add records to the Reviews table
INSERT INTO Reviews (review_id, cust_id, prod_id, rating, comment, review_date)
VALUES
(1, 1, 1, 4, 'Great product!', '2023-04-10'),
(2, 2, 2, 3, 'Not a good product', '2023-04-09'),
(3, 3, 3, 5, 'Could have been better', '2023-04-08'),
(4, 1, 2, 2, 'Loved it!', '2023-04-07'),
(5, 2, 3, 4, 'Nice!', '2023-04-06'),
(6, 3, 4, 5, 'Not according to expectation', '2023-04-05'),
(7, 1, 5, 1, 'Not so good', '2023-04-04'),
(8, 2, 1, 4, 'Average', '2023-04-03'),
(9, 3, 2, 3, 'Loved it!', '2023-04-02'),
(10, 1, 4, 2, 'Amazing!', '2023-04-01');