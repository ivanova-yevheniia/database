-- 1. Вивести prod_id всіх товарів, які пропонує постачальник DLL01.
--SELECT prod_id 
--FROM products
--WHERE vend_id = 'DLL01'

-- 2. Вивести кількість товарів, які пропонує постачальник DLL01. 
-- Відповідь позначити як num_prods.
--SELECT COUNT(prod_id) AS num_prods 
--FROM products
--WHERE vend_id = 'DLL01'

-- 3. Вивести кількість товарів, які пропонує кожен з постачальників. 
-- Поля у відповіді позначити vend_id, num_prods.
--SELECT COUNT(prod_id) AS num_prods, vend_id 
--FROM products
--GROUP BY vend_id

-- 4. На основі таблиці orders вивести cust_id та кількість замовлень кожного покупця. 
--Поля у відповіді позначити cust_id, num_orders.
--SELECT cust_id, COUNT(order_num) AS num_orders 
--FROM orders
--GROUP BY cust_id

-- 5. Вивести кількість товарів (кількість елементів) в кожному замовленні. 
-- Поля у відповіді позначити order_num, num_items. 
--SELECT order_num, SUM(quantity) AS num_items 
--FROM orderitems
--GROUP BY order_num

-- 6. Вивести vend_id та кількість товарів, яку пропонує кожен з постачальників, якщо ця кількість більше 2. 
--Поля у відповіді позначити vend_id, num_prods 
--SELECT COUNT(prod_id) AS num_prods, vend_id 
--FROM products
--GROUP BY vend_id
--HAVING COUNT(prod_id)>2

-- 7. Вивести Вивести vend_id та кількість товарів за ціною $4 і вище, яку пропонує кожен з постачальників, якщо пропонована кількість товарів >= 2. 
-- Поля у відповіді позначити vend_id, num_prods.
--SELECT COUNT(prod_id) AS num_prods, vend_id 
--FROM products
--WHERE prod_price >= 4
--GROUP BY vend_id
--HAVING COUNT(prod_id)>=2

-- 8.	Вивести cust_id та кількість замовлень кожного покупця, якщо замовлень більше одного. 
-- Поля у відповіді позначити cust_id, num_orders.
--SELECT cust_id, COUNT(order_num) AS num_orders 
--FROM orders
--GROUP BY cust_id
--HAVING COUNT(order_num)>1

-- 9.	Вивести кількість товарів (кількість елементів) в кожному замовленні, якщо товарів >= 3. 
-- Поля у відповіді позначити order_num, num_items
--SELECT order_num, SUM(quantity) AS num_items 
--FROM orderitems
--GROUP BY order_num
--HAVING COUNT(order_item) >= 3

-- 10. Вивести vend_id та кількість товарів, яку пропонує кожен з постачальників, якщо ця кількість більше 2. 
-- Поля у відповіді позначити vend_id, num_prods. Відповідь впорядкувати за полем vend_id
--SELECT COUNT(prod_id) AS num_prods, vend_id 
--FROM products
--GROUP BY vend_id
--HAVING COUNT(prod_id)>=2
--ORDER BY vend_id

-- 11. Вивести кількість товарів (кількість елементів) в кожному замовленні, якщо товарів >= 3. 
-- Поля у відповіді позначити order_num, num_items. Відповідь впорядкувати за полем num_items.
--SELECT order_num, SUM(quantity) AS num_items 
--FROM orderitems
--GROUP BY order_num
--HAVING COUNT(order_item) >= 3
--ORDER BY num_items

-- 12. Вивести назву та ім'я контактної особи всіх покупців, що замовляли товар RGAN01 
--(в 1-му підзапиті вивести order_num замовлень, в яких prod_id ='RGAN01', 
-- в 2-му підзапиті вивести cust_id відповідних покупців) 
--SELECT cust_name, cust_contact  FROM customers
--WHERE cust_id IN (SELECT cust_id FROM orders WHERE order_num IN 
				  --(SELECT order_num FROM orderitems WHERE prod_id = 'RGAN01'))

-- 14. Вивести імена та країни покупців, а також кількість замовлень кожного покупця. 
-- Поля у відповіді позначити cust_name, cust_state, num_orders. 
-- Відповідь впорядкувати за полем cust_name.
--SELECT cust_name, cust_state,
--(SELECT COUNT(*) FROM orders WHERE orders.cust_id = customers.cust_id) AS num_orders
--FROM customers
--ORDER BY cust_name

-- 15. Вивести імена постачальників та назви й ціни товарів, які вони пропонують.
--SELECT vend_name, prod_name, prod_price
--FROM vendors, products
--WHERE vendors.vend_id = products.vend_id

-- 16. Вивести назви товарів, їх постачальників, ціну товарів та їх кількість в замовленні 20007.
--SELECT prod_name, vend_name, prod_price, quantity
--FROM orderitems, products, vendors
--WHERE products.vend_id = vendors.vend_id
--AND orderitems.prod_id = products.prod_id
--AND order_num = 20007;

--17. Вивести назву та ім'я контактної особи всіх покупців, що замовляли товар RGAN01  
--SELECT cust_name, cust_contact  FROM customers
--WHERE cust_id IN (SELECT cust_id FROM orders WHERE order_num IN 
				  --(SELECT order_num FROM orderitems WHERE prod_id = 'RGAN01'))

-- 18. Виконати запит 15 за допомогою INNER JOIN.
--SELECT prod_name, prod_price
--FROM products
--INNER JOIN vendors ON vendors.vend_id = products.vend_id











