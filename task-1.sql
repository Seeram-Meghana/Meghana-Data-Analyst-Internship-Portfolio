CREATE DATABASE SalesDB;


SELECT TOP 5 *
FROM sales_data2;

SELECT COUNT(*) AS TotalRows
FROM sales_data2;

SELECT *
FROM sales_data2
WHERE Product_ID IS NULL
   OR Sale_Date IS NULL
   OR Sales_Rep IS NULL
   OR Region IS NULL
   OR Sales_Amount IS NULL
   OR Quantity_Sold IS NULL
   OR Product_Category IS NULL
   OR Unit_Cost IS NULL
   OR Unit_Price IS NULL
   OR Customer_Type IS NULL
   OR Discount IS NULL
   OR Payment_Method IS NULL
   OR Sales_Channel IS NULL
   OR Region_and_Sales_Rep IS NULL;

SELECT Product_ID, Sale_Date, Sales_Rep, Region,
       Sales_Amount, Quantity_Sold, Product_Category,
       Unit_Cost, Unit_Price, Customer_Type,
       Discount, Payment_Method, Sales_Channel,
       Region_and_Sales_Rep,
       COUNT(*) AS DuplicateCount
FROM sales_data2
GROUP BY Product_ID, Sale_Date, Sales_Rep, Region,
         Sales_Amount, Quantity_Sold, Product_Category,
         Unit_Cost, Unit_Price, Customer_Type,
         Discount, Payment_Method, Sales_Channel,
         Region_and_Sales_Rep
HAVING COUNT(*) > 1;

SELECT DISTINCT *
INTO sales_data_cleaned
FROM sales_data2;


SELECT COUNT(*) AS CleanedRows
FROM sales_data_cleaned;

SELECT COUNT(*) AS TotalRows
FROM sales_data2;