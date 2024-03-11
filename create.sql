
#### Challenge 2 - Create the Database and Tables ####

## Create a MySQL database  
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;


## Write SQL queries to create the tables

# Drop Tables
DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons ;


# CREATE CARS TABLE
CREATE TABLE cars (
car_id INT AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR(45) NOT NULL,
manufacturer VARCHAR(45) NOT NULL,
model VARCHAR(80) NOT NULL,
year YEAR NOT NULL,
color VARCHAR(45)
);


# CREATE CUSTOMERS TABLE
CREATE TABLE customers (
cust_id INT AUTO_INCREMENT PRIMARY KEY,
cust_name VARCHAR(80) NOT NULL,
cust_phone VARCHAR(25),
cust_email VARCHAR(80),
cust_adress VARCHAR(80),
cust_city VARCHAR(80),
cust_state VARCHAR(80),
cust_country VARCHAR(80),
cust_postal INT
);


# CREATE SALESPERSON TABLE
CREATE TABLE salespersons (
sales_id INT AUTO_INCREMENT PRIMARY KEY,
salescar_idcar_id_name VARCHAR(80) NOT NULL,
sales_store VARCHAR(25) NOT NULL
);

# CREATE INVOICES TABLE
CREATE TABLE invoices (
invoice_id INT AUTO_INCREMENT PRIMARY KEY,
date DATE NOT NULL,
car_id INT,
cust_id INT,
sales_id INT,
FOREIGN KEY (car_id) REFERENCES cars(car_id),
FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
FOREIGN KEY (sales_id) REFERENCES salespersons(sales_id)
);