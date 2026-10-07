-- ECOMMERCE SALES ANALYSIS
-- SQL PROJECT QUERIES

-- 1.Total Orders
select count(*) as Total_Orders from sales;

-- 2.Total Quantity Sold
select sum(Quantity) as Total_quantity_sold from sales;

-- 3.Total Sales
select sum(Total_Sales) as Total_sales from sales;

-- 4.Total Profit
select sum(Profit) as Total_profit from sales;

-- 5.Average Order Value
select avg(Total_Sales) as Average_order_value from sales;

-- 6.Average Profit per order
select avg(Profit) as Average_profit_per_order from sales;

-- 7.Sales by Product Category
select Product_Category,sum(Total_Sales) as Total_sales from sales group by Product_Category 
order by Total_sales desc;

-- 8.Profit by Product Category
select Product_Category,sum(Profit) as Total_profit from sales group by Product_Category 
order by Total_profit desc;

-- 9.Sales by Region
select Region,sum(Total_Sales) as Total_sales from sales group by Region order by Total_sales desc;

-- 10.Profit by Region
select Region,sum(Profit) as Total_profit from sales group by Region order by Total_profit desc;

-- 11.Sales by Country
select Country,sum(Total_Sales) as Total_sales from sales group by Country order by Total_sales desc;

-- 12.Profit by Country
select Country,sum(Profit) as Total_profit from sales group by Country order by Total_profit desc;

-- 13.Sales by Customer Segment
select Customer_Segment,sum(Total_Sales) as Total_sales from sales group by Customer_Segment 
order by Total_sales desc;

-- 14.Profit by Customer Segment 
select Customer_Segment,sum(Profit) as Total_profit from sales group by Customer_Segment 
order by Total_profit desc;

-- 15.Sales by Product Name
select Product_Name,sum(Total_Sales) as Total_sales from sales group by Product_Name 
order by Total_sales desc;

-- 16.Profit by Product Name
select Product_Name,sum(Profit) as Total_profit from sales group by Product_Name 
order by Total_profit desc;

-- 17.Top 5 Product by Profit
select Product_Name,SUM(Profit) as Total_profit from sales group by Product_Name 
order by Total_profit desc limit 5;

-- 18.Payment Method Usage
select Payment_Method,count(*) as Total_orders from sales group by Payment_Method 
order by Total_orders desc;

-- 19.Monthly Sales
select year(Order_Date) as Sales_year,month(Order_Date) as Sales_month,sum(Total_Sales) as Total_sales 
from sales group by year(Order_Date),month(Order_Date) order by Sales_year,Sales_month;

-- 20.Monthly Profit
select year(Order_Date) as Sales_year,month(Order_Date) as Sales_month,sum(Profit) as Total_profit
from sales group by year(Order_Date),month(Order_Date) order by Sales_year,Sales_month;

-- 21.Sales and Profit by Category
select Product_Category,sum(Total_Sales) as Total_sales,sum(Profit) as Total_profit from sales 
group by Product_Category order by Total_sales desc;

-- 22.Profit Margin by Category
select Product_Category,SUM(Total_Sales) as Total_sales,SUM(Profit) as Total_profit,
(SUM(Profit) / SUM(Total_Sales)) * 100 AS profit_margin_percent from sales group by Product_Category
order by profit_margin_percent desc;

-- 23.Profit Margin by Product
select Product_Name,SUM(Total_Sales) as Total_sales,SUM(Profit) as Total_profit,
(SUM(Profit) / SUM(Total_Sales)) * 100 AS profit_margin_percent from sales group by Product_Name
order by profit_margin_percent desc;

-- 24.Discount Impact on Profit
select Discount_Percent,SUM(Total_Sales) as Total_sales,SUM(Profit) as Total_profit,
(SUM(Profit) / SUM(Total_Sales)) * 100 AS profit_margin_percent from sales group by Discount_Percent
order by Discount_Percent;

-- 25.Shipping Cost by Region
select Region,sum(Shipping_Cost) as Total_shipping_cost from sales group by Region 
order by Total_shipping_cost desc;

-- 26.Shipping Cost and Profit by Region
select Region,sum(Shipping_Cost) as Total_shipping_cost,sum(Profit) as Total_profit from sales 
group by Region order by Total_shipping_cost desc;

-- 27.Highest Sales Order
select Order_ID,Order_Date,Product_Name,Total_Sales,Profit from sales order by Total_Sales desc limit 1;

-- 28.Highest Profit Order
select Order_ID,Order_Date,Product_Name,Total_Sales,Profit from sales order by Profit desc limit 1;

-- 29.Highest Sales Month
select year(Order_Date) as Sales_year,month(Order_Date) as Sales_month,sum(Total_Sales) as Total_sales 
from sales group by year(Order_Date),month(Order_Date) order by Total_sales desc limit 1;

-- 30.Highest Profit Month
select year(Order_Date) as Sales_year,month(Order_Date) as Sales_month,sum(Profit) as Total_profit
from sales group by year(Order_Date),month(Order_Date) order by Total_profit desc limit 1;

-- 31.Final KPI Verification
select count(*) as Total_orders,sum(Quantity) as Total_quantity_sold,sum(Total_Sales) as Total_sales,
sum(Profit) as Total_profit,avg(Total_Sales) as Average_order_value,
avg(Profit) as Average_profit_per_order from sales;
