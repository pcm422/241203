import pymysql

# 1 db connection
connection = pymysql.connect(
    host = '127.0.0.1',
    user='root',
    password = '990924',
    db = 'classicmodels',
    charset = 'utf8mb4',
    cursorclass = pymysql.cursors.DictCursor    
)

# 2 CRUD

## 1 select * from
def get_customers():
    cursor = connection.cursor()

    sql = "select * from customers"
    cursor.execute(sql)

    customers = cursor.fetchone()

    print(f"customers : {customers['customerNumber']}")
    print(f"customers : {customers['customerName']}")
    print(f"customers : {customers['country']}")
    
    cursor.close()

## 2 insert into
def add_customer():
    cursor = connection.cursor()
    name = 'babo'
    family_name = 'kim'
    
    sql = f"insert into customers(customerNumber, customerName, contactLastName) values({1000}, '{name}', '{family_name}')"
    cursor.execute(sql)
    connection.commit()
    cursor.close()
    
# add_customer()

## 3 update set
def update_customers():
    cursor = connection.cursor()
    update_name = 'update_babo'
    contactLastName = 'update_kim'
    sql = f"update customers set customerName='{update_name}', contactLastName='{contactLastName}' where customerNumber=1000"
    cursor.execute(sql)
    connection.commit()
    cursor.close()
    
# update_customers()

## 4 delete from
def delete_customer():
    cursor = connection.cursor()
    sql = f"delete from customers where customerNumber = 1000"
    cursor.execute(sql)
    connection.commit()
    cursor.close()
    
delete_customer()