# 🛒 Retail Inventory & Sales Management Database

Design and implementation of a **PostgreSQL Retail Inventory & Sales Management System** to manage categories, products, sales transactions, data integrity, and business reports.

---

## 🔹 Features
- 📦 Manage product inventory  
- 🧾 Record sales transactions  
- 🔐 Strong data integrity & validation  
- 📊 Business analytics & reports  
- 🧪 Real-world testing done  

---

## 🔹 Database Schema

### 📁 Categories
```sql
CREATE TABLE Categories(
  Category_Id INT PRIMARY KEY,
  CategoryName VARCHAR(50)
);
```

### 📦 Product
```sql
CREATE TABLE Product(
  Product_Id INT PRIMARY KEY,
  Product_Name VARCHAR(55),
  Category_Id INT,
  Unit_Price DECIMAL(10,2),
  Units_In_Stock INT,
  FOREIGN KEY (Category_Id) REFERENCES Categories(Category_Id)
);
```

### 🧾 Sales
```sql
CREATE TABLE Sales(
  Sale_ID INT PRIMARY KEY,
  Product_Id INT,
  Sale_Date DATE,
  Quantity_Sold INT,
  FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);
```

---

## 🔹 Data Integrity & Validation

```sql
ALTER TABLE Product
ADD CONSTRAINT chk_unit_price_positive CHECK (Unit_Price > 0);

ALTER TABLE Product
ADD CONSTRAINT chk_units_stock_non_negative CHECK (Units_In_Stock >= 0);

ALTER TABLE Sales
ADD CONSTRAINT chk_qty_positive CHECK (Quantity_Sold >= 0);
```

✔ Prevents negative prices  
✔ Prevents invalid stock values  
✔ Prevents negative quantity sold  
✔ Ensures no orphan records  

---

## 🔹 Business Reports

### 1️⃣ Total Sales by Product
```sql
SELECT p.Product_Id, p.Product_Name,
SUM(s.Quantity_Sold * p.Unit_Price) AS Total_Sales
FROM Product p
JOIN Sales s ON p.Product_Id = s.Product_Id
GROUP BY p.Product_Id, p.Product_Name
ORDER BY Total_Sales DESC;
```

### 2️⃣ Total Sales by Category
```sql
SELECT c.Category_Id, c.CategoryName,
SUM(s.Quantity_Sold * p.Unit_Price) AS Total_Sales
FROM Categories c
JOIN Product p ON c.Category_Id = p.Category_Id
JOIN Sales s ON p.Product_Id = s.Product_Id
GROUP BY c.Category_Id, c.CategoryName
ORDER BY Total_Sales DESC;
```

### 3️⃣ Current Inventory Status
```sql
SELECT Product_Id, Product_Name, Units_In_Stock
FROM Product
ORDER BY Units_In_Stock ASC;
```

### 4️⃣ Out of Stock Products
```sql
SELECT Product_Id, Product_Name
FROM Product
WHERE Units_In_Stock = 0;
```

---

## 🔹 Testing

| Test Case | Result |
|----------|--------|
Insert negative price | ❌ Rejected
Insert invalid category | ❌ Rejected
Insert negative quantity | ❌ Rejected
Insert valid sale | ✅ Accepted

Example failing test:
```sql
INSERT INTO Product VALUES (999,'Test',101,-10,5);
```

---

## 🔹 Tools Used
- PostgreSQL  
- pgAdmin / DBeaver  
- SQL  

---

## ✅ Conclusion
This project provides a **robust retail database system** that:
✔ Maintains structured retail data  
✔ Ensures strong data integrity  
✔ Prevents invalid entries  
✔ Supports inventory management  
✔ Generates meaningful business insights  
