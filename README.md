# CRPC 9: Analyse Promotions and Provide Tangible Insights to Sales Director

## Created by- Saddam Ansari @Aspiring Data Analyst [Linkeldin Profile](https://www.linkedin.com/in/saddam-ansari-dataanalyst)







## Challenge Objective
**AtliQ Mart** is a retail giant with over **50 supermarkets** in the southern region of India. All their 50 stores ran a massive **promotion** during the **Diwali 2023** and **Sankranti 2024** (festive time in India) on their AtliQ branded products. 

Now the sales director wants to understand which promotions did well and which did not so that they can make informed decisions for their next promotional period.  

## Promotion Overview
"AtliQ Mart conducted two major campaign promotions: the Diwali Campaign 2023 and the Sankranti Campaign 2024. During both campaigns, the following promotions were implemented:

 1. 25% off
 2. 33% off
 3. 50% off
 4. 500 cashback
 5. BOGOF (Buy One Get One Free)

## About Dataset
For this project, I was provided with separate tables of data, namely dim_campaign, dim_product, dim_store, and fact_events.

![1](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/aa5509d2-a5d1-4c24-bc93-9324bdabd897) 

![2](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/cf2428b2-76b6-4a94-b64f-4643c6f06319)

![3](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/6301c496-9158-44f6-9850-220b65a64873) 

![4](https://github.com/user-saddam123/Codebasics-Resume-Project-Challenge-9/assets/123800896/6ced385a-1a02-4425-9bd6-6b49fcc877f1)


### Final MasterData 
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







































































