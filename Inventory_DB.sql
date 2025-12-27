create table Categories(Category_Id int primary key, CategoryName varchar (50));

create table Product(Product_Id int primary key, Product_Name varchar (55), Category_Id int, Unit_Price decimal (10,2), Units_In_Stock int,
foreign key (Category_Id) references Categories(Category_Id));

create table Sales(Sale_ID int primary key, Product_Id int, Sale_Date date, Quantity_Sold int, foreign key (Product_Id) references Product(Product_Id));

insert into Categories(Category_Id, CategoryName) values
(101, 'Electronics'),
(102, 'Mobile Devices'),
(103, 'Audio Accessories'),
(104, 'Televisions'),
(105, 'Cameras'),
(106, 'Appliances'),
(107, 'Home Cleaning'),
(108, 'Kitchen Appliances'),
(109, 'Personal Care'),
(110, 'Laundry Appliances'),
(111, 'Furniture'),
(112, 'Office Furniture'),
(113, 'Home Decor'),
(114, 'Wall Art'),
(115, 'Outdoor Living'),
(116, 'Sports Equipment'),
(117, 'Sporting Goods'),
(118, 'Accessories'),
(119, 'Stationery'),
(120, 'Computer Accessories'),
(121, 'Storage Devices'),
(122, 'Mobile Accessories'),
(123, 'Kitchenware'),
(124, 'Dining & Serving'),
(125, 'Bathroom Accessories'),
(126, 'Cleaning Supplies'),
(127, 'Pet Supplies'),
(128, 'Gaming'),
(129, 'Health & Fitness'),
(130, 'First Aid & Medical'),
(131, 'Personal Care & Beauty'),
(132, 'Weather Gear'),
(133, 'Travel Accessories');


insert into Product(Product_Id, Product_Name, Category_Id, Unit_Price, Units_In_Stock) values
(1, 'Laptop', 101, 1200.00, 50),
(2, 'Smartphone', 102, 800.00, 100),
(3, 'Tablet', 102, 500.00, 75),
(4, 'Desktop Computer', 101, 1500.00, 30),
(5, 'Headphones', 103, 100.00, 200),
(6, 'Portable Speaker', 103, 150.00, 150),
(7, 'Television', 104, 2000.00, 40),
(8, 'Digital Camera', 105, 600.00, 80),
(9, 'Microwave Oven', 106, 300.00, 120),
(10, 'Refrigerator', 106, 1200.00, 60),
(11, 'Vacuum Cleaner', 107, 250.00, 100),
(12, 'Toaster', 108, 50.00, 150),
(13, 'Coffee Maker', 108, 100.00, 100),
(14, 'Blender', 108, 80.00, 120),
(15, 'Electric Kettle', 108, 40.00, 200),
(16, 'Iron', 109, 30.00, 180),
(17, 'Hair Dryer', 109, 25.00, 250),
(18, 'Washing Machine', 110, 800.00, 70),
(19, 'Dishwasher', 110, 700.00, 60),
(20, 'Sofa', 111, 600.00, 25),
(21, 'Bed', 111, 800.00, 20),
(22, 'Dining Table', 111, 400.00, 40),
(23, 'Office Chair', 112, 150.00, 80),
(24, 'Bookshelf', 112, 200.00, 60),
(25, 'Curtains', 113, 50.00, 300),
(26, 'Carpet', 113, 80.00, 150),
(27, 'Wall Clock', 114, 20.00, 500),
(28, 'Painting', 114, 300.00, 30),
(29, 'Outdoor Grill', 115, 150.00, 70),
(30, 'Garden Hose', 115, 30.00, 200),
(31, 'Patio Furniture Set', 115, 800.00, 15),
(32, 'Bicycle', 116, 400.00, 50),
(33, 'Treadmill', 116, 1000.00, 20),
(34, 'Dumbbell Set', 116, 150.00, 100),
(35, 'Yoga Mat', 116, 20.00, 150),
(36, 'Basketball', 117, 30.00, 80),
(37, 'Football', 117, 25.00, 100),
(38, 'Golf Clubs', 117, 200.00, 40),
(39, 'Tennis Racket', 117, 80.00, 60),
(40, 'Running Shoes', 118, 100.00, 150),
(41, 'Backpack', 118, 50.00, 200),
(42, 'Sunglasses', 118, 30.00, 250),
(43, 'Watch', 118, 150.00, 100),
(44, 'Fountain Pen', 119, 20.00, 300),
(45, 'Notebook', 119, 5.00, 500),
(46, 'Desk Lamp', 119, 40.00, 150),
(47, 'Calculator', 119, 15.00, 200),
(48, 'Printer', 120, 200.00, 50),
(49, 'Scanner', 120, 150.00, 80),
(50, 'Projector', 120, 500.00, 25),
(51, 'External Hard Drive', 121, 100.00, 100),
(52, 'USB Flash Drive', 121, 20.00, 300),
(53, 'Keyboard', 121, 50.00, 150),
(54, 'Mouse', 121, 30.00, 200),
(55, 'Power Bank', 122, 40.00, 200),
(56, 'Charger Cable', 122, 10.00, 300),
(57, 'Wireless Earbuds', 122, 80.00, 150),
(58, 'Phone Case', 122, 15.00, 250),
(59, 'Kitchen Knife Set', 123, 50.00, 100),
(60, 'Cutting Board', 123, 20.00, 150),
(61, 'Cookware Set', 123, 100.00, 80),
(62, 'Blender', 123, 80.00, 120),
(63, 'Tea Set', 124, 30.00, 200),
(64, 'Coffee Mug', 124, 10.00, 300),
(65, 'Water Pitcher', 124, 20.00, 250),
(66, 'Dinnerware Set', 124, 150.00, 100),
(67, 'Bathroom Towel Set', 125, 40.00, 150),
(68, 'Shower Curtain', 125, 15.00, 250),
(69, 'Toothbrush Holder', 125, 10.00, 300),
(70, 'Soap Dispenser', 125, 12.00, 200),
(71, 'Laundry Detergent', 126, 20.00, 250),
(72, 'Fabric Softener', 126, 15.00, 200),
(73, 'Bleach', 126, 10.00, 300),
(74, 'Cleaning Wipes', 126, 8.00, 400),
(75, 'Dog Food', 127, 30.00, 150),
(76, 'Cat Litter', 127, 25.00, 200),
(77, 'Pet Bed', 127, 50.00, 100),
(78, 'Fish Tank', 127, 80.00, 75),
(79, 'Gaming Console', 128, 400.00, 50),
(80, 'Video Games', 128, 60.00, 200),
(81, 'Gaming Headset', 128, 80.00, 150),
(82, 'Gaming Chair', 128, 200.00, 80),
(83, 'Digital Watch', 129, 150.00, 100),
(84, 'Fitness Tracker', 129, 100.00, 120),
(85, 'Smart Scale', 129, 50.00, 150),
(86, 'Bluetooth Earphones', 129, 70.00, 180),
(87, 'First Aid Kit', 130, 30.00, 200),
(88, 'Thermometer', 130, 10.00, 300),
(89, 'Pain Reliever', 130, 15.00, 250),
(90, 'Bandages', 130, 8.00, 400),
(91, 'Sunscreen', 131, 12.00, 200),
(92, 'Moisturizer', 131, 15.00, 250),
(93, 'Facial Cleanser', 131, 10.00, 300),
(94, 'Shampoo', 131, 8.00, 400),
(95, 'Umbrella', 132, 20.00, 300),
(96, 'Raincoat', 132, 40.00, 150),
(97, 'Winter Jacket', 132, 80.00, 100),
(98, 'Gloves', 132, 10.00, 500),
(99, 'Backpack', 133, 50.00, 200),
(100, 'Travel Pillow', 133, 15.00, 300);


-- Update Product: SQL queries to update product information (e.g., update unit price or units in stock). 
	-- Update based on the Unit Price 
update Product 
set Unit_Price = Unit_Price * 0.95 -- Unit_Price decrease of 5% for Electronics and Mobile Devices due to New Year Offers. 
where Category_Id = 102 or Category_Id = 101;

-- Update based on the Unit Stock after New Year
update Product
set Units_In_Stock = Units_In_Stock - 5
where Category_Id = 101 or Category_Id = 102 and Units_In_Stock >= 5;

-- Update the Product Name (Desktop Computer) to Personal Computer 
set SQL_SAFE_UPDATES = 0;
update Product 
set Product_Name = "PC" 
where Product_Name = "Desktop Computer"; 

-- Delete Product: SQL queries to delete a product (Thermometer) from the Products table.
delete from Product 
where Product_Name = "Thermometer"; 

-- Record Sales: SQL queries to record product sales in the Sales table.
	-- Inserting sample sales data into the Sales table
insert into Sales(Sale_ID, Product_id, Sale_Date, Quantity_Sold) values
(1, 1, '2024-01-01', 3), -- Laptop sold on January 1, 2024, 3 units and similar for rest
(2, 5, '2024-01-02', 2), 
(3, 10, '2024-01-03', 1), 
(4, 17, '2024-01-04', 4), 
(5, 22, '2024-01-05', 2), 
(6, 31, '2024-01-06', 1),  
(7, 40, '2024-01-07', 3),  
(8, 48, '2024-01-08', 2),  
(9, 55, '2024-01-09', 5),  
(10, 63, '2024-01-10', 1),  
(11, 71, '2024-01-11', 4),  
(12, 79, '2024-01-12', 2),  
(13, 86, '2024-01-13', 3),  
(14, 94, '2024-01-14', 1),  
(15, 100, '2024-01-15', 2),  
(16, 5, '2024-01-16', 3),  
(17, 17, '2024-01-17', 2),  
(18, 22, '2024-01-18', 1),  
(19, 31, '2024-01-19', 4), 
(20, 40, '2024-01-20', 2), 
(21, 48, '2024-01-21', 1),
(22, 55, '2024-01-22', 3), 
(23, 63, '2024-01-23', 2), 
(24, 71, '2024-01-24', 1), 
(25, 79, '2024-01-25', 5), 
(26, 86, '2024-01-26', 2), 
(27, 94, '2024-01-27', 3), 
(28, 100, '2024-01-28', 1), 
(29, 5, '2024-01-29', 2), 
(30, 17, '2024-01-30', 3), 
(31, 22, '2024-01-31', 1), 
(32, 31, '2024-02-01', 4), 
(33, 40, '2024-02-02', 2), 
(34, 48, '2024-02-03', 1), 
(35, 55, '2024-02-04', 5), 
(36, 63, '2024-02-05', 2), 
(37, 71, '2024-02-06', 3), 
(38, 79, '2024-02-07', 1), 
(39, 86, '2024-02-08', 4), 
(40, 94, '2024-02-09', 2), 
(41, 100, '2024-02-10', 1), 
(42, 5, '2024-02-11', 3), 
(43, 17, '2024-02-12', 2), 
(44, 22, '2024-02-13', 1), 
(45, 31, '2024-02-14', 4), 
(46, 40, '2024-02-15', 2),
(47, 48, '2024-02-16', 1), 
(48, 55, '2024-02-17', 3), 
(49, 63, '2024-02-18', 2), 
(50, 71, '2024-02-19', 1); 


-- Using Join Operation and CASE(WHEN, ELSE) to update the Units_instock in the Products table based on the QuantitySold in the Sales table. 
update Product p
set Units_In_Stock = 
    case 
        when s.Quantity_Sold is not null 
        then p.Units_In_Stock - s.Quantity_Sold
        else p.Units_In_Stock
    end
from Sales s
where p.Product_Id = s.Product_Id;

    
Select * from Categories;
Select * from Product;
Select * from Sales;

--Data Validation ::
  --Foreign Key Constraint
select conname
from pg_constraint
where conrelid = 'Product'::regclass;

--Data Validation ::

--Ensure Positive Unit Price
alter table Product
add constraint chk_unit_price_positive
check (unit_price > 0);

--Ensure Units in Stock is Non-Negative
alter table Product
add constraint chk_units_stock_non_negative
check(units_in_stock >= 0);

--For Sales table ensure valid quantity and price:
alter table Sales
add constraint chk_qty_positive 
check (quantity_sold >= 0);

alter table Sales
add constraint chk_sales_price_positive 
check (unit_price > 0);

--Reports ::

--1)Total Sales by Product 
select p.Product_Id,
       p.Product_Name,
       sum(s.Quantity_Sold * p.Unit_Price) as Total_Sales
from Product p
join Sales s on p.Product_Id = s.Product_Id
group by p.Product_Id, p.Product_Name
order by Total_Sales desc;

--2)Total Sales by Category
select c.Category_Id,
       c.CategoryName,
       sum(s.Quantity_Sold * p.Unit_Price) as Total_Sales
from Categories c
join Product p 
     on c.Category_Id = p.Category_Id
join Sales s 
     on p.Product_Id = s.Product_Id
group by c.Category_Id, c.CategoryName
order by Total_Sales desc;

--3)Current Inventory Status
select Product_Id,
       Product_Name,
       Units_In_Stock
from Product
order by Units_In_Stock asc;

--4)Out of Stock Products
select Product_Id, Product_Name
from Product
where Units_In_Stock = 0;


--TESTING ::

--1)Test1-Insert Negative Price
insert into Product values (999, 'Test', 101, -10, 5);
--output: Fail

--2)Test2-Insert Invalid Category
insert into Product values (998, 'Test', 999, 100, 5);
--output: Fail

--3)Test3-Insert Negative Quantity Sold
insert into Sales values (500, 1, CURRENT_DATE, -5);
--output: Fail

--4)Normal Insert
insert into Sales values (501, 1, CURRENT_DATE, 5);
--output: Pass
