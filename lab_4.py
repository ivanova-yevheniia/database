import psycopg2

username = 'student01'
password = 'postgress'
database = 'student01_DB'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT cust_id, TRIM(cust_name) FROM customers
'''
query_2 = '''select TRIM(cust_name), coalesce(sum(item_price*quantity), 0) 
from customers left join orders using(cust_id) left join orderitems using (order_num)
group by cust_id;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
print(type(conn))

with conn:

    print ("Database opened successfully")
    cur = conn.cursor()
    print('1.  \n')

    cur.execute(query_1)

    for row in cur:
        print(row)

#    for row in cur.fetchall():
#        print(row)

#    limit = 20
#    for idx in range(limit):
#        row = cur.fetchone()
#        if row is None:
#            break

#    for row in cur.fetchmany(size=20):
#        print(row)    	    