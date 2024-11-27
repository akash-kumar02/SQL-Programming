SELECT * FROM company.product;

use company;

select distinct product_name from product;
select count(distinct product_name) from product;

### 1. Find the total quantity sold for each product.
 select product_name,sum(quantity) as "total quantity" from product group by product_name;
 
 ### 2. Find average price of each product:-
 select product_name,avg(price) from product group by product_name;
 
 ### 3. Get total number of sales (sale_id,count) for each region:-
 select region ,count(sale_id) from product group by region;
 
 ### 4. Find total quantity sold for each region:-
 select region,sum(quantity) from product group by region;
 
 ### 5. Find the region where more than 10 items have been sold:-
 select region,sum(quantity) from product group by region having sum(quantity)>10;
 
 ### 6. Find total sales amount for each product:-
 select product_name, sum(price*quantity)  as "total sales ammount" from product group by product_name;
 
 ### 7. Find the region where total sale exceeds 5000:-
 select region, sum(price*quantity) as "total sales amount" from product group by region having sum(price*quantity)>5000;
 
 ### 8. Find average quantity sold for each product & only show products with an average quantity greater than 4:-
 select product_name ,avg(quantity) from product group by product_name having avg(quantity)>4;

 ### 9. Get the number of different products sold in  each region:-
 select region, sum(distinct quantity) from product group by region;
 
 ### 10. Find the products product with highest total sales amount:-
 select product_name region,sum(price) from product group by product_name having max(price) limit 1;