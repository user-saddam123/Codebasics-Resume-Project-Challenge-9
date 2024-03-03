CREATE DATABASE crp;
USE crp;

select * from masterdeta;

-- 1    
SELECT 
	ROW_NUMBER() OVER (ORDER BY product_name) AS SRN,
	product_name AS Product_Name,
	promo_type AS PromoType,
	base_price AS Price
FROM 
    (SELECT DISTINCT product_name , promo_type , base_price FROM masterdeta WHERE base_price > 500 AND promo_type = 'BOGOF') AS Unique_Products;
    
--

-- 2
  SELECT
  ROW_NUMBER() OVER (ORDER BY COUNT(store_id) DESC) AS SRN,
  city AS City,
  COUNT(DISTINCT store_id) AS Total_Store
  FROM masterdeta
  GROUP BY city;

--

-- 3 
SELECT
  ROW_NUMBER() OVER (ORDER BY campaign_name) AS SRN,
  campaign_name AS Campagign_Name,
  CONCAT(FORMAT(SUM(total_revenue_generated_before_promo)/1000000,2),' M') as Revenue_Before_Promo,
  CONCAT(FORMAT(SUM(after_promo_price_affected)/1000000,2),' M') as Revenue_After_Promo,
  CONCAT(Format((SUM(after_promo_price_affected) - SUM(total_revenue_generated_before_promo))/1000000,2),' M') AS Change_Growth
  FROM masterdeta
  GROUP BY campaign_name;
  
--

-- 4
SELECT
-- ROW_NUMBER() OVER (ORDER BY campaign_name) AS SRN,
category AS Category,
CONCAT(FORMAT(SUM(quantity_sold_before_promo)/1000,2),' K') AS Quantity_Sold_Before_PROMO,
CONCAT(FORMAT(SUM(FinaL_quantity_sold_after_promo)/1000,2),' K') AS Quantity_Sold_After_Promo,
CONCAT(FORMAT(((SUM(FinaL_quantity_sold_after_promo) - SUM(quantity_sold_before_promo))/ SUM(quantity_sold_before_promo))* 100, 2), '%') AS Percentage_Change,
ROW_NUMBER() OVER (ORDER BY ((SUM(FinaL_quantity_sold_after_promo) - SUM(quantity_sold_before_promo)) / SUM(quantity_sold_before_promo)) DESC) AS Rank_Value  
FROM masterdeta
where campaign_name = 'Diwali'
GROUP BY category;

--


-- 5
SELECT
product_name AS Product_Name,
CONCAT(FORMAT(SUM(total_revenue_generated_before_promo)/1000000,2),' M') AS Revenue_Before_PROMO,
CONCAT(FORMAT(SUM(after_promo_price_affected)/1000000,2),' M') AS Revenue_After_Promo,
CONCAT(FORMAT(((SUM(after_promo_price_affected) - SUM(total_revenue_generated_before_promo))/ SUM(total_revenue_generated_before_promo))* 100, 2), '%') AS Percentage_Change,
ROW_NUMBER() OVER (ORDER BY ((SUM(after_promo_price_affected) - SUM(total_revenue_generated_before_promo)) / SUM(total_revenue_generated_before_promo)) DESC) AS Rank_Value  
FROM masterdeta
GROUP BY product_name;


-- 5 final
SELECT
    Product_Name,
    Revenue_Before_PROMO,
    Revenue_After_Promo,
    Percentage_Change,
    Rank_Value
FROM (
    SELECT
        product_name AS Product_Name,
        CONCAT(FORMAT(SUM(total_revenue_generated_before_promo) / 1000000, 2), ' M') AS Revenue_Before_PROMO,
        CONCAT(FORMAT(SUM(after_promo_price_affected) / 1000000, 2), ' M') AS Revenue_After_Promo,
        CONCAT(FORMAT(((SUM(after_promo_price_affected) - SUM(total_revenue_generated_before_promo)) / SUM(total_revenue_generated_before_promo)) * 100, 2), '%') AS Percentage_Change,
        ROW_NUMBER() OVER (ORDER BY ((SUM(after_promo_price_affected) - SUM(total_revenue_generated_before_promo)) / SUM(total_revenue_generated_before_promo)) DESC) AS Rank_Value
    FROM masterdeta
    GROUP BY product_name
) AS RankedResults
WHERE Rank_Value <= 5;

--
