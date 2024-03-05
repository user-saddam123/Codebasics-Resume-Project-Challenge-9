# CRPC 9: Analyse Promotions and Provide Tangible Insights to Sales Director

## Created by- Saddam Ansari @Aspiring Data Analyst [Linkeldin Profile](https://www.linkedin.com/in/saddam-ansari-dataanalyst)

## Important Links 👇

### Live Dashboard at Novypro [Live_link_Novypro](https://www.novypro.com/project/crpc9---understanding-sales-promotion-analysis-by-saddam-ansari)

### Power BI Live Dashboard [Link](https://app.powerbi.com/view?r=eyJrIjoiZTRhNzNkZGMtNzc5ZS00MDczLWJjODEtNDYyN2E1NDk3YmFmIiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9)

### Prsentation [Link](https://www.canva.com/design/DAF-bgA8iaE/6PGj6tR0PBACpo9Rn4LXeQ/edit?utm_content=DAF-bgA8iaE&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

### Business Reqest Solutions with query and result [Link](https://docs.google.com/document/d/1k7-CKe6dfkA2_3Gzwb8p2flDm93unUiCH0xlnRl5JHA/edit?usp=sharing)

### Masterdata where you can see which types of changes i have made [link](https://docs.google.com/spreadsheets/d/1OKabRHFVq5sbRbgkey35Izg1DyLx6ui6MOKhy8l8gds/edit?usp=sharing)
#

## Tables of Content
1. [Challenge Objective](#challenge-objective)
2. [Promotion Overview](promotion-overview)
3. [About dataset](#about-dataset)
4. [Master Data](#final-masterdata)
5. [Business Request](#business-request)
6. [KPI](#kpis)
7. [Recommendation Insight](#recommended-insights)
 * [Store Performance Analysis](#store-performance-analysis)
 * [Promotion type Analysis](#promotion-type-analysis)
 * [Product and Category Analysis](#product-and-category-analysis)
9. [Recommendation](#some-recommendation)
10. [Summer recommendation](#recommendation-for-summer-campaign)
11. [Learning](#my-learning)
12. [Gratitude](#gratitude)
13. [End](#the-end)

#

## Challenge Objective
[Home 🔁](#tables-of-content)

**AtliQ Mart** is a retail giant with over **50 supermarkets** in the southern region of India. All their 50 stores ran a massive **promotion** during the **Diwali 2023** and **Sankranti 2024** (festive time in India) on their AtliQ branded products. 

Now the sales director wants to understand which promotions did well and which did not so that they can make informed decisions for their next promotional period.  

## Promotion Overview
[Home 🔁](#tables-of-content)

"AtliQ Mart conducted two major campaign promotions: the Diwali Campaign 2023 and the Sankranti Campaign 2024. During both campaigns, the following promotions were implemented:

 1. 25% off
 2. 33% off
 3. 50% off
 4. 500 cashback
 5. BOGOF (Buy One Get One Free)

## About Dataset
[Home 🔁](#tables-of-content)

For this project, I was provided with separate tables of data, namely dim_campaign, dim_product, dim_store, and fact_events.

![1](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/aa5509d2-a5d1-4c24-bc93-9324bdabd897) 

![2](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/cf2428b2-76b6-4a94-b64f-4643c6f06319)

![3](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/6301c496-9158-44f6-9850-220b65a64873) 

![4](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/6ced385a-1a02-4425-9bd6-6b49fcc877f1)


### Final MasterData 
[Home 🔁](#tables-of-content)

I combined all of these tables into one, named 'masterdata,' for ease of use-

Eg;


| event_id | 	store_id	| campaign_id	| product_code	| base_price	| promo_type	| quantity_sold_before_promo	| total_revenue_generated_before_promo	| quantity_sold_after_promo |	ISU_Incremental_Sold_Quantity_Percentage	| FinaL_quantity_sold_after_promo	| based_on_new_quantity_ISU_percentage_change | how_many_quntity_goes_free	| after_promo_revenue_without_promo	| after_promo_price_affected	| how_much_disconted_ammount	| incremental_revenue_IR_change	| incremental_revenue_IR_change_without_promo 	| product_name	| category	| city	| campaign_name	| start_date	| end_date |
| -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- |
|  7f650b 	|  STCBE-2 	|  CAMP_SAN_01 	| P11 	|  190	 |  50% OFF 	|  34	 |  6460 	|  52	 |  52.94%	 |  52  |  52.94%	 |  0	 |  9880	 |  4940	 |  4940 	|  -23.53% 	|  52.94%	 |  Atliq_Doodh_Kesar_Body_Lotion (200ML)	 |  Personal Care	 |  Coimbatore	 |  Sankranti	 |  10-01-2024	 |  16-01-2024  |
| a21f91 | 	STBLR-8	| CAMP_DIW_01	| P03	| 156	| 25% OFF	| 393	| 61308	| 322	| -18.07%	| 322	| -18.07%	| 0	| 50232	| 37674	| 12558	| -38.55%	| -18.07%	| Atliq_Suflower_Oil (1L)	| Grocery & Staples	| Bengaluru	| Diwali	| 12-11-2023	| 18-11-2023 |
| 78bc80	| STVJD-0	| CAMP_SAN_01	| P07	| 300	| BOGOF	| 22	| 6600	| 85	| 286.36%	| 170	| 672.73%	| 85	| 51000	| 25500	| 25500	| 286.36%	| 672.73%	| Atliq_Curtains	| Home Care	| Vijayawada| 	Sankranti	| 10-01-2024	| 16-01-2024 |
| a1503f	| STCBE-1	| CAMP_DIW_01	| P15	| 3000	| 500 Cashback	| 329	| 987000	| 1000	| 203.95%	| 1000	| 203.95%	| 0	| 3000000	| 2500000	| 500000	| 153.29%	| 203.95%	| Atliq_Home_Essential_8_Product_Combo	| Combo1	| Coimbatore	| Diwali	| 12-11-2023	| 18-11-2023 |
| 1091cf |	STBLR-6	| CAMP_DIW_01	| P05	| 55	| 25% OFF	| 108	| 5940	| 93	| -13.89%	| 93	| -13.89%	| 0	| 5115	| 3836	| 1279	| -35.42%	| -13.89%	| Atliq_Scrub_Sponge_For_Dishwash	| Home Care	| Bengaluru	Diwali	| 12-11-2023	| 18-11-2023 |
| 8.02E+96 |	STBLR-4	| CAMP_DIW_01	| P11	| 190	| 50% OFF	| 91	| 17290	| 116	| 27.47%	| 116	| 27.47%	| 0	| 22040	| 11020	| 11020	| -36.26%	| 27.47%	| Atliq_Doodh_Kesar_Body_Lotion (200ML)	| Personal Care	| Bengaluru	| Diwali	| 12-11-2023	| 18-11-2023 |
| 73d86f |	STVSK-2	| CAMP_SAN_01	| P10	| 50	| 25% OFF	| 31	| 1550	| 26	| -16.13%	| 26	| -16.13%	| 0	| 1300	| 975	| 325	| -37.10%	| -16.13%	| Atliq_Cream_Beauty_Bathing_Soap (125GM)	| Personal Care	| Visakhapatnam	| Sankranti	| 10-01-2024	| 16-01-2024 |
| fe3560	| STHYD-4	| CAMP_DIW_01	| P13	| 350	| BOGOF	| 73	| 25550	| 245	| 235.62%	| 490	| 571.23%	| 245	| 171500	| 85750	| 85750	| 235.62%	| 571.23%	| Atliq_High_Glo_15W_LED_Bulb	| Home Appliances	| Hyderabad	| Diwali| 12-11-2023	| 18-11-2023 |


#
[Home 🔁](#tables-of-content)
## Business Request
Start by importing the 'retail_events_db' database into MySQL Workbench. Craft SQL queries to address the specified business questions. Save these queries in an SQL file and upload it to GitHub. Share the GitHub link and include query outputs in your presentation.

### Request 1.
Provide a list of products with a base price greater than 500 and that are featured in promo type of 'BOGOF' (Buy One Get One Free). This information will help us identify high-value products that are currently being heavily discounted, which can be useful for evaluating our pricing and promotion strategies.

#### SQL
![request 1 a](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/850df87a-c9ea-41b1-9f39-244dca81d258)

#### Power BI
![request 1](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/3864c436-97d2-40a8-b643-9f16ea2c3154)

[Home 🔁](#tables-of-content)
### Request 2.
Generate a report that provides an overview of the number of stores in each city. The results will be sorted in descending order of store counts, allowing us to identify the cities with the highest store presence. The report includes two essential fields: city and store count, which will assist in optimizing our retail operations.

#### SQL
![Request 2](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/6e56ac3f-4880-4e50-a3ed-e5bb49122ff4)

#### Power BI
![Request 2 a](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/5b8eb5cd-8eab-4e32-84db-7e2b3d6285ab)

[Home 🔁](#tables-of-content)
### Request 3.
Generate a report that displays each campaign along with the total revenue generated before and after the campaign? The report includes three key fields: campaign_name, total_revenue(before_promotion), total_revenue(after_promotion). This report should help in evaluating the financial impact of our promotional campaigns. (Display the values in millions).

#### SQL
![Request 3](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/fd56d9f6-9d23-4b67-81b5-d96c487d87de)


#### Power BI
![Request 3 a](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/17ffd671-7725-43a8-99cc-5656ab78645f)


[Home 🔁](#tables-of-content)
### Request 4. 
Produce a report that calculates the Incremental Sold Quantity (ISU%) for each category during the Diwali campaign. Additionally, provide rankings for the categories based on their ISU%. The report will include three key fields: category, isu%, and rank order. This information will assist in assessing the category-wise success and impact of the Diwali campaign on incremental sales.

Note: ISU% (Incremental Sold Quantity Percentage) is calculated as the percentage increase/decrease in quantity sold (after promo) compared to quantity sold (before promo)

#### Tips- 
 * First, to calculate the quantity sold after the promo, a new column was created. In this column, if the quantity after the promo corresponds to a BOGOF (Buy One Get One Free) offer, it is multiplied by 2; otherwise, it remains the same.

 * Next, to compute the ISU (Incremental Quantity Sold %), another new column was created. A DAX formula was applied to calculate the percentage change in quantity sold after subtracting the quantity sold before and then dividing by the quantity sold before. This resulted in the percentage change value, which was then converted to a percentage format.

#### SQL
![Request 4 ](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/04272336-52f0-4023-a66a-4c49bc2c4f5c)

#### Power BI
![Request 4 a](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/f43ff00f-09da-4fc2-85de-78fafdfc0388)

[Home 🔁](#tables-of-content)
### Request 5. 
Create a report featuring the Top 5 products, ranked by Incremental Revenue Percentage (IR%), across all campaigns. The report will provide essential information including product name, category, and ir%. This analysis helps identify the most successful products in terms of incremental revenue across our campaigns, assisting in product optimization.

#### Tips- 
 * For the analysis of the top 5 products based on revenue before and after the promotion, along with the calculation of the Incremental Revenue Percentage (IR%), I have initially created a column called "Revenue After Promo." This column calculates the revenue after the promotion by subtracting the discounted amount based on the promo percentage (e.g., 20%, 33%, 55%, etc.) from the base value. Then, this adjusted value is multiplied by the quantity to derive the revenue after the promotion.

 * Subsequently, I computed the Incremental Revenue (IR) similar to the ISU formula, which involves calculating the difference between the revenue after the promotion and the revenue before the promotion.

#### SQL
![Request 5](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/6f0ccac0-f72b-4700-bfea-4f6ba7050653)

#### Power BI
![Request 5 a](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/917ca9d8-4ce8-47be-a1c2-8e4eec3e749b)

#
[Home 🔁](#tables-of-content)
## Kpis 

![kpis optional](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/46fd7b15-36bd-4b8b-8acb-7ce625d4191d)


#

## Recommended Insights
[Home 🔁](#tables-of-content)
### Store Performance Analysis:

### Request 1
Which are the top 10 stores in terms of Incremental Revenue (IR) generated from the promotions?

![6](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/853af1f3-67cb-428d-9a21-9dcd3fdd5032)

### Request 1 Optional
Which are the bottom 10 stores in terms of Incremental Revenue (IR) generated from the promotions?

![7](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/b12d86da-de5e-4303-bb20-68c84411d63c)


#
[Home 🔁](#tables-of-content)
### Request 2
Which are the bottom 10 stores when it comes to Incremental Sold Units (ISU) during the promotional period?

![9](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/d3055982-7014-463d-868c-df4907b815b8)


[Home 🔁](#tables-of-content)
### Request 2 Optional 
Which are the Top 10 stores when it comes to Incremental Sold Units (ISU) during the promotional period?

![10](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/095b9bc9-9356-453e-95cf-35c21774838d)

#
[Home 🔁](#tables-of-content)
### Request 3
How does the performance of stores vary by city? Are there any common characteristics among the top-performing stores that could be leveraged across other stores?

#### Solutions-

 * The performance of stores is indeed influenced by the city in which they are located. For instance, the top-performing store, STCHE-7, which boasts high Incremental Revenue Percentage (IR%) and Incremental Sales Uplift Percentage (ISU%), is situated in Chennai. Similarly, the second top performer, STBLR-7, with remarkable IR% and ISU%, is located in Bengaluru. Additionally, the third top performer is situated in Mysore.

 * This indicates that the top cities have the top-performing stores exhibit superior sales and revenue performance.

 * Yes, there are indeed common characteristics among the top-performing stores that could be leveraged across other stores. For instance, the top-performing stores have witnessed the highest sales and revenue generation through the "Buy One Get One" promotion and the 500 cashback offer.

 * Additionally, these stores have observed significant sales of certain common products, which were among the top-selling items across both stores. Furthermore, it was found that the highest sales in the home appliance category occurred in the top two stores.

![11](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/bcb22e5b-611d-418a-80c7-d5da831a3821)

Check out this insights to understand top 2 store have whats kinds of things common

![12](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/e80fa264-e6d9-4114-b1b9-f97c430aac7d)


#


[Home 🔁](#tables-of-content)
## Promotion Type Analysis:

### Request 1 
What are the top 2 promotion types that resulted in the highest Incremental Revenue?

![13](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/2be019a3-831c-4879-9139-89bacc77ed3a)

[Home 🔁](#tables-of-content)
### Request 1 optional
What are the bottom promotion types that resulted in the lowest Incremental Revenue?

![14](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/ab9ce955-cebb-4d76-ab04-078765ce1ce7)

#

### Request 2
What are the bottom 2 promotion types in terms of their impact on Incremental Sold Units?

![16](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/50581a74-ceed-4336-9e1d-ddf11438faae)


### Request 2 optional
What are the top promotion types in terms of their impact on Incremental Sold Units?

![15](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/a12ba097-ac69-4e45-9603-163911928dc8)


#
[Home 🔁](#tables-of-content)
### Request 3
Is there a significant difference in the performance of discount-based promotions versus BOGOF (Buy One Get One Free) or cashback promotions?

#### Solution-

 * Based on my analysis, there is a significant difference in the performance between discount-based promotions and BOGOF (Buy One Get One Free) or cashback promotions. This is evident when considering incremental revenue, as BOGOF and the 500 cashback promotions are the only ones where revenue increased after the promotion. In contrast, for other discounted promotions, revenue either remained stagnant or decreased post-promotion.

 * Similarly, when examining the Incremental Sales Uplift Percentage (ISU%), BOGOF and the 500 cashback promotions exhibit the highest ISU, indicating that these promotions resulted in the highest increase in quantity sold post-promotion.

 * On the other hand, discounted offers show minimal growth, and in some cases, even a decrease in quantity sold, highlighting the stark difference in performance between discount-based promotions and BOGOF or cashback promotions.

![17](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/ccc77cb6-132c-4e9a-b4fd-730243c58d61)


#
[Home 🔁](#tables-of-content)
### Request 4
Which promotions strike the best balance between Incremental Sold Units and maintaining healthy margins?

#### Solution-
To determine which promotion strikes the best balance between Incremental Sold Units (ISU) and maintaining healthy margins, we can calculate the revenue per unit sold for each promotion. A higher revenue per unit sold indicates a better balance between ISU and maintaining healthy margins.

Let's calculate the revenue per unit sold for each promotion:

 * 500 Cashback : Revenue per unit sold = 158 million / 63 thousand = 2500
 * BOGOF : Revenue per unit sold = 95 million / 431 thousand ≈ 220.41
 * 25% OFF: Revenue per unit sold = 6 million / 38 thousand ≈ 157.89
 * 50% Off: Revenue per unit sold = 1 million / 28 thousand ≈ 35.71
 * 33% Off: Revenue per unit sold = 35 million / 91 thousand ≈ 384.62

Based on the calculations, Promotion 500 Cashback has the highest revenue per unit sold, followed by Promotion 33% Off. These promotions may be considered as striking the best balance between Incremental Sold Units and maintaining healthy margins. 

Promotion BOGOF also shows a relatively high revenue per unit sold. However, Promotion 25% Off and 50% Off have lower revenue per unit sold, indicating potentially lower margins despite higher quantities sold.

Therefore, Promotions 500 Cashback, BOGOF, and 33% Off could be considered as the best balance between Incremental Sold Units and maintaining healthy margins.

![18](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/b554884c-0798-4ba8-a9f5-754523f05992)

#
[Home 🔁](#tables-of-content)
## Product and Category Analysis:

### Request 1
Which product categories saw the most significant lift in sales from the promotions?

![19](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/74c37a1a-507d-4488-bf5b-4fb8f0d8b542)

### Request 1 Optional
Which product categories saw the most significant lift in revenue from the promotions?

![20](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/cd563890-d1fa-4542-be75-c550b92e59f7)

#
[Home 🔁](#tables-of-content)
### Request 2
Are there specific products that respond exceptionally well or poorly to promotions?

#### well respond
![21](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/9f3f5c33-4fd9-4bc8-9e1e-68a405aafac6)

#### poor respond

![22](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/692ebd57-c271-4ec2-b465-4a0e71ea2d92)

#
[Home 🔁](#tables-of-content)
### Request 2 optional
Are there specific products that respond exceptionally well or poorly to promotions? based on QTY-

#### well respond

![23](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/60cce7e1-18b8-4fa0-839f-de392971638d)



#### poor respond

![24](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/20d2bced-e738-4c8b-93e2-beefa4671f13)

#
[Home 🔁](#tables-of-content)
### Request 5
What is the correlation between product category and promotion type effectiveness?


![25](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/6d2ebc7c-cef2-45ce-af98-ed12ee9f1987)

#
[Home 🔁](#tables-of-content)
## Some Recommendation

#### 01  Where we can lunch new store in future?
Based on the previous analysis, it is recommended that AtliQ Mart should consider opening its new store in the top-performing city. This decision is supported by our observation that the top city generates higher revenue.

#### 02  Promotion Strategy for future Promotion Campaign
For promotional activities, it is suggested to focus on seasonal products. Our analysis indicates that offering promotions on seasonal items tends to result in higher sales.

#### 03  Strategic Product Promotion for our next summer campaign
When deciding on which product category to promote, it is advisable to target products that are in high demand during specific seasons. For example, during summer, promotions can be offered on products such as sunglasses, glucose, refrigerators, fans, etc.

#### 04  What we can do for bottom performance store? 
To increase revenue in bottom-performing stores, it is essential to understand the local area's culture and preferences. By catering to local preferences and offering tailored promotions, it is possible to boost sales. Additionally, running special offers can attract more customers and drive revenue growth.

#### 05  What kinds of promo we can provide for future campaign to Maximizing Revenue?
Based on our analysis, promotions such as 500 cashback, BOGOF (Buy One Get One Free), and 33% discounts tend to perform well. These promotions maintain a good balance between post-promotion revenue and profit margin.

![26](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/cbf29748-f1c4-47b8-8045-596aefb039fa)

#
[Home 🔁](#tables-of-content)
## Recommendation for Summer Campaign 
We can do some such promotional activities at our supermarket in summer which will attract customers and improve sales in the summer season. Here are some proposed promotional strategies which can be effective in summer season:

#### 1. Cooling Products Promotion :
Focus on cooling products in the summer season, such as air conditioners, fans, refrigerators, air coolers, etc. Customers can be attracted by providing discounts or special offers on these products.

#### 2. Summer Apparel Promotion : 
Organizing promotions on summer wear, like cotton clothes, beachwear, sunglasses, caps, etc. Sales can be improved by highlighting seasonal clothing lines.

#### 3. Hydration Products Promotion :
In the summer season, providing discounts or combo offers on hydration products, like water bottles, energy drinks, fruit juices, etc. Customers will be helped in providing essential products for hydr

#### 3. Hydration Products Promotion :
In the summer season, providing discounts or combo offers on hydration products, like water bottles, energy drinks, fruit juices, etc. Customers will be helped in providing essential products for hydr

![27](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/9c9bd58b-0a8a-41fd-959d-e88cd183d39e)

#

[Home 🔁](#tables-of-content)
## My Learning
This challenge was a great opportunity to learn and apply advanced data analysis techniques. I also learned how to create visually appealing and informative dashboards that can be used to make data-driven decisions.

also This project has been truly rewarding, allowing me to showcase my work and further my journey as an aspiring data analyst. It not only adds value to my portfolio but also demonstrates my capabilities in handling complex datasets.

#
[Home 🔁](#tables-of-content)
## Gratitude

I'm grateful to Codebasics for providing a platform for aspiring data analysts to work on real-time datasets and enhance their skills.

#

**Check out my submission and let me know what you think!**

Your feedback is highly plays a crucial role in my growth, so please feel free to share any suggestions.

Apart from this project, I have also completed over 20+ Power BI projects, which you can explore on NovyPro at [NovyPro Portfolio](https://www.novypro.com/profile_projects/saddamansari)

Thank you for taking the time to view my project. I hope you enjoyed it.

#

Created and Analyzed by:

Saddam Ansari @Aspiring Data Analyst [LinkedIn]((https://www.linkedin.com/in/saddam-ansari-dataanalyst))

Location: India

### THE END
[Home 🔁](#tables-of-content)
