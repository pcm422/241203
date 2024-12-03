USE classicmodels;
SELECT `customerName` FROM customers;
SELECT * from products where `productLine` = "Classic cars";
SELECT * from orders ORDER BY `orderDate` desc limit 10;
SELECT * from payments WHERE amount >= 100;
select orders.`orderNumber`, customers.`customerName` from orders join customers on orders.`customerNumber` = customers.`customerNumber`;
SELECT products.`productName`, products.`productLine`, productlines.`textDescription` FROM products join productlines on products.`productLine` = productlines.`productLine`;
SELECT e1.employeeNumber, e1.firstName , e1.lastName , e2.firstName  as 'ManagerFirstName', e2.lastName as 'ManagerLastName' from employees e1 left join employees e2 on e1.reportsTo = e2.employeeNumber;
SELECT e.`employeeNumber`, e.`lastName`, e.`firstName`, e.extension, e.email, e.`officeCode`, e.`reportsTo`, e.`jobTitle` FROM employees e JOIN offices o on e.`officeCode` = o.`officeCode` where o.city = "San Francisco";
SELECT `productLine`, count(*) as productCount from products  group by `productLine`;
SELECT customers.`customerNumber`, customers.`customerName`, sum(orderdetails.`quantityOrdered` * orderdetails.priceEach) as totalAmount from customers 
join orders on customers.`customerNumber` = orders.`customerNumber` join orderdetails on orders.`orderNumber` = orderdetails.`orderNumber` group by customers.`customerNumber`, customers.`customerName`;
SELECT productName, sum(quantityOrdered) as totalQuantity from orderdetails od join products p on od.`productCode` = p.`productCode` GROUP BY `productName` ORDER BY totalQuantity DESC LIMIT 1;
SELECT o.city, sum(od.`quantityOrdered` * od.`priceEach`) as totalSales from orders ord join orderdetails od on ord.`orderNumber` = od.`orderNumber` join customers c on ord.`customerNumber` = c.`customerNumber`
join employees e on c.`salesRepEmployeeNumber` = e.`employeeNumber` join offices o on e.`officeCode` = o.`officeCode` GROUP BY o.city ORDER BY totalSales DESC LIMIT 1;
SELECT orderNumber, sum(quantityOrdered * priceEach) as totalAmount from orderdetails group by orderNumber HAVING totalAmount > 500;
SELECT customerNumber, sum(amount) as totalPayment from payments GROUP BY `customerNumber` HAVING totalPayment > (SELECT AVG(amount) from payments);
SELECT `customerName` FROM customers where `customerNumber` NOT IN (SELECT `customerNumber` from orders);
SELECT c.`customerName`, sum(od.`quantityOrdered` * od.`priceEach`) as totalSpent FROM customers c join orders o ON c.`customerNumber` = o.`customerNumber` join orderdetails od on o.`orderNumber` = od.`orderNumber`
GROUP BY c.`customerName` ORDER BY totalSpent DESC LIMIT 1;
-- customerNumber의 기본값이 없어서 오류남
INSERT INTO customers (customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit)
VALUES ('New Customer', 'Lastname', 'Firstname', '123-456-7890', '123 Street', 'Suite 1', 'City', 'State', 'PostalCode', 'Country', 1002, 50000.00);
UPDATE products
SET buyPrice = buyPrice * 1.10
WHERE productLine = 'Classic Cars';
-- customers 테이블에는 email 컬럼이 존재하지 않아서 오류남
UPDATE customers
SET email = 'newemail@example.com'
WHERE customerNumber = 103;
UPDATE employees
SET officeCode = '2'
WHERE employeeNumber = 1002;