-- create the ecommerce schema
CREATE SCHEMA ecommerce;

-- select the ecommerce schema
USE ecommerce;

-- Create the Customers table
CREATE TABLE Customers (
  cust_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  payment_method VARCHAR(100),
  PRIMARY KEY (cust_id)
);

-- Create the Customer_Address table
    CREATE TABLE Customer_Address (
    billing_address VARCHAR(255) NOT NULL,
    cust_id INT NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES Customers(cust_id)
);

-- Create the Category table
CREATE TABLE Category (
  cat_id INT PRIMARY KEY,
  cat_name VARCHAR(50)
);

-- Create the Products table
CREATE TABLE Products (
  prod_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  onsale VARCHAR(3) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  cat_id INT,
  FOREIGN KEY (cat_id) REFERENCES Category(cat_id),
  PRIMARY KEY (prod_id)
);

-- Create the Stock table
CREATE TABLE Stock (
  prod_id INT PRIMARY KEY,
  stock INT,
  FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
);

-- Create the Cart table
CREATE TABLE Cart (
  cust_id INT,
  prod_id INT,
  quantity INT,
  PRIMARY KEY (cust_id, prod_id),
  FOREIGN KEY (cust_id) REFERENCES Customers(cust_id),
  FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
);

-- Create the Orders table
CREATE TABLE Orders (
  order_id INT NOT NULL,
  cust_id INT NOT NULL,
  order_date DATE NOT NULL,
  total_amount DECIMAL(10,2) NOT NULL,
  status VARCHAR(50) NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (cust_id) REFERENCES Customers(cust_id)
);

-- Create the Shipping table
CREATE TABLE Shipping (
  shipping_id INT NOT NULL,
  order_id INT NOT NULL,
  shipping_date DATE NOT NULL,
  delivery_date DATE NOT NULL,
  shipping_address VARCHAR(255) NOT NULL,
  PRIMARY KEY (shipping_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
  );

-- Create the Order_Items table
CREATE TABLE Order_Items (
  order_id INT NOT NULL,
  prod_id INT NOT NULL,
  quantity_ordered INT NOT NULL,
  PRIMARY KEY (order_id, prod_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
);

-- Create the Payments table
CREATE TABLE Payments (
  payment_id INT NOT NULL,
  order_id INT NOT NULL,
  payment_date DATE NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  method VARCHAR(100) NOT NULL,
  status VARCHAR(100) NOT NULL,
  PRIMARY KEY (payment_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Create the Reviews table
CREATE TABLE Reviews (
  review_id INT NOT NULL,
  cust_id INT NOT NULL,
  prod_id INT NOT NULL,
  rating INT NOT NULL,
  comment TEXT,
  review_date DATE NOT NULL,
  PRIMARY KEY (review_id),
  FOREIGN KEY (cust_id) REFERENCES Customers(cust_id),
  FOREIGN KEY (prod_id) REFERENCES Products(prod_id)
);


-- Create a trigger to update product stock when an order is placed
CREATE TRIGGER Update_Product_Stock
AFTER INSERT ON Order_Items
FOR EACH ROW
  UPDATE Stock
  SET stock = stock - NEW.quantity_ordered
  WHERE prod_id = NEW.prod_id;

