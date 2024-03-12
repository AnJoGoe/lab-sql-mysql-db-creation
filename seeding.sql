

-- ============  Challenge 3 - Seeding the Database ============

--  INSERT INTO CARS TABLE
INSERT INTO cars (vin, manufacturer, model , year, color)
VALUES ('1ABC123456789DEF', 'Toyota', 'Starshine', 2022, 'Blue'), 
('2BCD123456789DEF', 'BMB', 'Speedster', 1980, 'Black'),
('3CDE123456789DEF', 'Mercedes', 'Limousine', 2012, 'Grey');


--  INSERT INTO CUSTOMERS TABLE
INSERT INTO customers (cust_name, cust_phone, cust_email, cust_adress, cust_city, cust_state, cust_country, cust_postal)
VALUES ('John Doe', '012-333-888', 'johndoe@example.com', 'Any Street 1', 'Any Town', 'Any State', 'Any Country',  12345),
       ('Jane Smith', '013-444-777', 'janesmith@example.com', 'Any Street 2', 'This Town', 'This State', 'This Country',  54321),
       ('Bob Johnson', '014-555-666', 'bobjohnson@example.com', 'No Street 3', 'No Town', 'No State', 'No Country',  11111);
       

 --  INSERT INTO SALESPERSONS TABLE      
INSERT INTO salespersons (sales_name, sales_store)
VALUES ('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin');


--  INSERT INTO INVOCIES TABLE
INSERT INTO invoices (date, car_id, cust_id, sales_id)
VALUES ('2018-08-22', 1, 1, 3),
('2018-12-31', 3, 3, 1),
('2019-01-22', 2, 2, 3)

-- END OF Script