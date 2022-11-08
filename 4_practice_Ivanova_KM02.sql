-- 1. Вивести vend_id, vend_name постачальників, що постачають товари,
-- та prod_id відповідних товарів.
--SELECT vendors.vend_id, vendors.vend_name, products.prod_id 
--FROM vendors 
--INNER JOIN products 
--ON vendors.vend_id = products.vend_id

-- 2. Вивести vend_id, vend_name усіх постачальників та prod_id товарів, які вони постачають.
--SELECT vendors.vend_id, vendors.vend_name, products.prod_id
--FROM vendors 
--LEFT JOIN products ON vendors.vend_id = products.vend_id

-- 3. Вивести vend_id, vend_name постачальників, що не постачають товари.
--SELECT vendors.vend_id, vendors.vend_name
--FROM vendors 
--LEFT JOIN products 
--ON vendors.vend_id = products.vend_id
--WHERE prod_id IS NULL

-- 4. Вивести vend_id, vend_name та кількість товарів, яку пропонує 
-- кожен з постачальників. Поля у відповіді позначити vend_id, 
-- vend_name, num_prods
--SELECT vendors.vend_id, vendors.vend_name, COUNT(products.prod_id) AS num_prods
--FROM vendors 
--LEFT JOIN products ON vendors.vend_id = products.vend_id
--GROUP BY vendors.vend_id

-- 5. Виконати запит 4, відповідь впорядкувати за полем vend_name.
--SELECT vendors.vend_id, vendors.vend_name, COUNT(products.prod_id) AS num_prods
--FROM vendors 
--LEFT JOIN products ON vendors.vend_id = products.vend_id
--GROUP BY vendors.vend_id
--ORDER BY vendors.vend_name

-- 6. Вивести vend_name та кількість товарів, яку пропонує кожен з постачальників, 
-- якщо ця кількість більше 2. Поля у відповіді позначити vend_name, num_prods. 
-- Відповідь впорядкувати за полем vend_name.
--SELECT vendors.vend_id, vendors.vend_name, COUNT(products.prod_id) AS num_prods
--FROM vendors 
--LEFT JOIN products
--USING(vend_id)
--GROUP BY vendors.vend_id
--HAVING(COUNT(products.prod_id)>2)
--ORDER BY vendors.vend_name

-- 7. Вивести cust_id, cust_name покупців, що купували товари, та номери їх замовлень
--SELECT customers.cust_id, customers.cust_name, orders.order_num 
--FROM customers 
--JOIN orders 
--USING(cust_id)

-- 8. Вивести cust_id, cust_name усіх покупців та номери відповідних замовлень
--SELECT customers.cust_id, customers.cust_name, orders.order_num 
--FROM customers 
--LEFT JOIN orders 
--USING(cust_id)

-- 9. Вивести cust_id, cust_name покупців, що не мають замовлень
--SELECT cust_id, cust_name, order_num
--FROM customers 
--LEFT JOIN orders 
--USING(cust_id) 
--WHERE order_num IS NULL

-- 10. Вивести cust_id, cust_name та кількість замовлень кожного покупця.
--SELECT cust_id, cust_name, COUNT(*) 
--FROM customers 
--LEFT JOIN orders 
--USING(cust_id) 
--GROUP BY cust_id

-- 11. Виконати запит 10, відповідь впорядкувати за полем cust_name.
--SELECT cust_id, cust_name, COUNT(*) 
--FROM customers 
--LEFT JOIN orders 
--USING(cust_id) 
--GROUP BY cust_id
--ORDER BY cust_name

-- 12. Вивести cust_id, cust_name покупців, що мають рівно 1 замовлення. 
-- Відповідь впорядкувати за полем cust_name.
--SELECT cust_id, cust_name, COUNT(*) AS prod_num 
--FROM customers 
--JOIN orders 
--USING(cust_id) 
--GROUP BY cust_id 
--HAVING(Count(*) = 1) 
--ORDER BY cust_name 

-- 13. Вивести cust_id, cust_name усіх покупців та кількість і ціну товарів, 
-- які вони замовляли.
--SELECT cust_id, cust_name, quantity, item_price 
--FROM customers 
--LEFT JOIN orders 
--USING(cust_id) 
--LEFT JOIN orderitems 
--USING(order_num)

-- 14. Вивести cust_id, cust_name усіх покупців та на яку загальну суму вони замовили товарів. 
-- Поля у відповіді позначити cust_id, cust_name, total.
--SELECT cust_id, cust_name, SUM(quantity * item_price) AS total 
--FROM customers 
--JOIN orders 
--USING(cust_id) 
--JOIN orderitems 
--USING(order_num) 
--GROUP BY (cust_id, cust_name)

-- 15. Виконати запит 14. Відповідь впорядкувати за cust_name. 
--SELECT cust_id, cust_name, SUM(quantity * item_price) AS total 
--FROM customers 
--JOIN orders 
--USING(cust_id) 
--JOIN orderitems 
--USING(order_num) 
--GROUP BY (cust_id, cust_name)
--ORDER BY cust_name

-- 16. На основі запиту 14 вивести лише тих покупців, 
--які замовили товарів на суму більшу, ніж $3000. 
--Позначити поле cust_name як vip_client.  
--SELECT cust_id, cust_name AS vip_client, SUM(quantity * item_price) AS total 
--FROM customers 
--JOIN orders 
--USING(cust_id)
--JOIN orderitems 
--USING(order_num) 
--GROUP BY (cust_id, cust_name) 
--HAVING(SUM(quantity * item_price) > 3000) 
--ORDER BY cust_name

-- 17. На основі запиту 14 вивести тих покупців, 
--які замовили товарів на суму меншу, ніж $1000. 
--Позначити поле cust_name як common_client.   
--SELECT cust_id, cust_name AS common_client, SUM(quantity * item_price) AS total 
--FROM customers 
--JOIN orders USING(cust_id) 
--JOIN orderitems USING(order_num) 
--GROUP BY (cust_id, cust_name) 
--HAVING(SUM(quantity * item_price) <= 1000) 
--ORDER BY cust_name

-- 18. Виконати запит 17. Відповідь впорядкувати за загальною сумою.   
--SELECT cust_id, cust_name, SUM(quantity * item_price) AS total 
--FROM customers 
--JOIN orders USING(cust_id) 
--JOIN orderitems USING(order_num) 
--GROUP BY (cust_id, cust_name) 
--ORDER BY SUM(quantity * item_price)