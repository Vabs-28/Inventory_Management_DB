🛒 Retail Inventory & Sales Management Database Project
📌 Project Objective

This project designs and implements a PostgreSQL Retail Inventory & Sales Management Database to:

Manage product inventory

Maintain category information

Record sales transactions

Ensure strong data integrity & validation

Generate insightful business reports for decision-making

🏗️ Database Schema Overview

The database consists of three core tables:

📁 Categories Table

Stores product category information.

Column	Description
Category_Id	Primary Key
CategoryName	Category description
CREATE TABLE Categories(
  Category_Id INT PRIMARY KEY,
  CategoryName VARCHAR(50)
);

📦 Product Table

Maintains product inventory details.

Column	Description
Product_Id	Primary Key
Product_Name	Product Name
Category_Id	Foreign Key → Categories.Category_Id
Unit_Price	Product Price
Units_In_Stock	Available Stock
CREATE TABLE Product(
  Product_Id INT PRIMARY KEY,
  Product_Name VARCHAR(55),
  Category_Id INT,
  Unit_Price DECIMAL(10,2),
  Units_In_Stock INT,
  FOREIGN KEY (Category_Id) REFERENCES Categories(Category_Id)
);

🧾 Sales Table

Stores product sales transactions.

Column	Description
Sale_ID	Primary Key
Product_Id	Foreign Key → Product.Product_Id
Sale_Date	Date of Sale
Quantity_Sold	Units Sold
CREATE TABLE Sales(
  Sale_ID INT PRIMARY KEY,
  Product_Id INT,
  Sale_Date DATE,
  Quantity_Sold INT,
  FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);

🔐 Data Integrity Implementation
✅ Foreign Key Constraints

Product.Category_Id → Categories.Category_Id

Sales.Product_Id → Product.Product_Id

✔️ Ensures no product exists without a valid category
✔️ Prevents sales records for non-existing products

✔️ Data Validation Rules
Constraint	Purpose
Unit price must be positive	Prevents negative pricing
Units in stock must be non-negative	Prevents invalid inventory
Quantity sold ≥ 0	Prevents invalid sales
Foreign Key validation	Avoids orphan records

Example Constraints:

ALTER TABLE Product
ADD CONSTRAINT chk_unit_price_positive CHECK (Unit_Price > 0);

ALTER TABLE Product
ADD CONSTRAINT chk_units_stock_non_negative CHECK (Units_In_Stock >= 0);

ALTER TABLE Sales
ADD CONSTRAINT chk_qty_positive CHECK (Quantity_Sold >= 0);

🧾 Sales Recording

Multiple realistic sales transactions were inserted to simulate retail operations.

INSERT INTO Sales(Sale_ID, Product_Id, Sale_Date, Quantity_Sold)
VALUES (1,1,'2024-01-01',3);

📊 Business Reports Generated
📌 1️⃣ Total Sales by Product
SELECT p.Product_Id, p.Product_Name,
SUM(s.Quantity_Sold * p.Unit_Price) AS Total_Sales
FROM Product p
JOIN Sales s ON p.Product_Id = s.Product_Id
GROUP BY p.Product_Id, p.Product_Name
ORDER BY Total_Sales DESC;

📌 2️⃣ Total Sales by Category
SELECT c.Category_Id, c.CategoryName,
SUM(s.Quantity_Sold * p.Unit_Price) AS Total_Sales
FROM Categories c
JOIN Product p ON c.Category_Id = p.Category_Id
JOIN Sales s ON p.Product_Id = s.Product_Id
GROUP BY c.Category_Id, c.CategoryName
ORDER BY Total_Sales DESC;

📌 3️⃣ Current Inventory Status
SELECT Product_Id, Product_Name, Units_In_Stock
FROM Product
ORDER BY Units_In_Stock ASC;

📌 4️⃣ Out of Stock Products
SELECT Product_Id, Product_Name
FROM Product
WHERE Units_In_Stock = 0;

🧪 Testing & Validation
✔️ Test Cases Executed
Test	Result
Insert negative price	❌ Rejected
Insert invalid category	❌ Rejected
Insert negative quantity	❌ Rejected
Insert valid sale	✅ Accepted

Example Failing Test:

INSERT INTO Product VALUES (999,'Test',101,-10,5);

✅ Conclusion

This project successfully:

✔️ Maintains structured retail data
✔️ Ensures high data integrity
✔️ Prevents invalid entries
✔️ Supports inventory management
✔️ Generates meaningful analytical reports

📎 Tools Used

PostgreSQL

pgAdmin / DBeaver

SQL
