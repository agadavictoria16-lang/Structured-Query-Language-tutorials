SELECT * FROM StoreSales_2024

SELECT YEAR (SaleDate) AS Sales_per_year,
MONTH (SaleDate) AS Sales_month,
DAY (SaleDate) AS Sale_Day, 
SUM (Amount) AS Yearly_sales FROM StoreSales_2024
GROUP BY SaleDate




