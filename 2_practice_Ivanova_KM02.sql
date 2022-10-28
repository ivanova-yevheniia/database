-- 1. Вивести імена та країни постачальників як єдине поле vendor_country.
--select concat(vend_id, vend_country) as vendor_country from vendors 

-- 2. Вивести PROD_ID, кількість, ціну та вартість кожного проданого товару із замовлення 
-- 20008. Поле вартість назвати expanded_price
--select prod_id, quantity, item_price,  quantity*item_price as expanded_price   
--from orderitems 
--where order_num = 20008 

-- 3. Вивести імена та країни покупців в нижньому регістрі як єдине поле, назваши його 
-- customers_countries.
--select lower(concat(cust_name, cust_country)) as customers_country
--from customers

-- 4. Вивести імена та країни постачальників у верхньому регістрі, назвавши це поле 
--vendor_name
--select upper(concat(vend_name, vend_country)) as vendor_name
--from vendors

-- 5. Вивести середню ціну товарів. Назвати це поле avg_price
--select avg(prod_price) as avg_price from products

-- 6. Вивести середню ціну проданих товарів. Назвати це поле sale_avg_price
--select avg(item_price) as sale_avg_price from orderitems

-- 7. Вивести максимальну ціну товару. Назвати це поле max_price
--select max(prod_price) as max_price from products

-- 8. Вивести мінімальну ціну товару. Назвати це поле min_price
--select min(prod_price) as min_price from products

-- 9. Вивести мінімальну ціну проданого товару. Назвати це поле sale_min_price
--select min(item_price) as sale_min_price from orderitems

-- 10. Вивести назву найдешевшого товару. Назвати це поле cheapest_product
--select prod_name as cheapest_product from products
--where prod_price = (select min(prod_price) from products)

-- 11. Вивести назву найдорожчого проданого товару. Назвати це поле expensive_product
--select prod_name as expensive_product from products
--where prod_price = (select max(prod_price) from products)

-- 12. Скільки в базі даних покупців з різними іменами?
--select count(distinct(cust_name)) from customers

-- 13. Скільки покупців мають e-mail?
--select count(cust_email) from customers
--where cust_email is not null

-- 14. Cкільки постачальників проживають в США?
--select count(vend_state) from vendors
--where vend_state is not null

-- 15. Скільки всього одиниць товару продано в замовленні 20005?
--select sum(quantity) from orderitems
--where order_num = 20005

-- 16. На яку загальну суму продано товарів в замовленні 20005?
--select sum(quantity*item_price) from orderitems
--where order_num = 20005

-- 17. Скільки проданого найдорожчого товару?
--select sum(quantity) from orderitems
--where item_price = (select max(item_price) from orderitems)

-- 18. Скільки проданого найдешевшого товару??
--select sum(quantity) from orderitems
--where item_price = (select min(item_price) from orderitems)





