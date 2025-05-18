-- DimDate
CREATE TABLE DimDate (
  sales_date_id INT PRIMARY KEY,
  date DATE,
  month INT,
  quarter INT,
  year INT
);

-- DimCustomer
CREATE TABLE DimCustomer (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  region VARCHAR(50),
  segment VARCHAR(50)
);

-- DimProduct
CREATE TABLE DimProduct (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10, 2)
);

-- FactSales
CREATE TABLE FactSales (
  transaction_id INT PRIMARY KEY,
  customer_id INT REFERENCES DimCustomer(customer_id),
  product_id INT REFERENCES DimProduct(product_id),
  sales_amount DECIMAL(10, 2),
  quantity INT,
  sales_date_id INT REFERENCES DimDate(sales_date_id)
);
