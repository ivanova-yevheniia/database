-- 1. Вивести всі стовпці таблиці customers ( vendors / orders / products / orderitems ).
--select * from customers
--select * from vendors
--select * from orders
--select * from products
--select * from orderitems

-- 2. Вивести назви всіх товарів.
--select prod_name from products

-- 3. Вивести імена та адреси покупців.
--select cust_name, cust_address from customers

-- 4. Вивести імена та країни постачальників
--select vend_name, vend_country from vendors

-- 5. Вивести всі замовлення разом з їх елементами та ID проданих товарів.
--select * from orders, orderitems

-- 6. Вивести всю інформацію про покупців, розташувавши імена покупців в алфавітному порядку.
--select * from customers order by cust_name

-- 7. Вивести ID товарів, назви товарів та їх ціну - в порядку спадання ціни.
--select prod_id, prod_price, prod_name
--from products
--order by prod_price desc

-- 8. Вивести всі замовлення, впорядкувавши їх за номером, в зворотному поряку
--select * from orders order by order_num desc

-- 9. Вивести всі замовлення, впорядкувавши їх за датами (спочатку йдуть більш нові).
--select * from orders order by order_date desc

-- 10. Вивести всі замовлення - від останнього до першого, елементи всередині замовлень розташувати в порядку 1, 2, 3, …
--select * from orderitems
--order by order_num desc, order_item asc

-- 11. Вивести товари, ціна яких дорівнює 3.49 (поля: назва товару, ціна товару).
--select prod_name, prod_price from products
--where prod_price = 3.49

-- 12. Вивести товари, ціна яких не перевищує 9.0 (назва товару, ціна товару).
--select prod_name, prod_price from products
--where prod_price <= 9.0

-- 13. Вивести товари, ціна яких знаходиться в межах [5; 10] (назва товару, ціна товару).
--select prod_name, prod_price from products
--where prod_price between 5.0 and 10.0

-- 14. Вивести товари, що постачаються не DLL01 (назва товару, ID постачальника) .
--select prod_name, vend_id from products
--where vend_id != 'DLL01'

-- 15. Вивести товари, що постачаються DLL01 та FNG01 (назва товару, ID постачальника)  .
--select prod_name, vend_id from products
--where vend_id = 'DLL01' or vend_id = 'FNG01'

-- 16. Вивести всіх покупців, що мають пошту.
--select * from customers
--where cust_email is not null

-- 17.  Вивести всіх покупців, що не мають пошти
--select * from customers
--where cust_email is null

-- 18. Вивести всіх постачальників, що живуть за межами США (не вказано штат)
--select * from vendors
--where vend_state is null

-- 19. Вивести список товарів, що не мають ціни
--select * from products
--where prod_price is null