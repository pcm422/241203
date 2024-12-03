use classicmodels;

-- 초급
-- (1) customers 테이블에 새 고객을 추가하세요.
INSERT INTO customers (customerNumber, customerName, contactLastName) VALUES('100', '바보', '김');
-- (2) products 테이블에 새 제품을 추가하세요.
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP) VALUES('S9999', 'babo', 'Planes', '1:1', 'babo', 'babo', '100', '100', '100');
-- (3) employees 테이블에 새 직원을 추가하세요.
INSERT INTO employees(employeeNumber, lastName, firstName, extension, email, officeCode, jobTitle) VALUES('9999', 'babo', 'babo', 'x9000', 'a@a.com', 7, 'Sales Rep');
-- (4) offices 테이블에 새 사무실을 추가하세요.
INSERT INTO offices(officeCode, city, phone, addressLine1, country, postalCode, territory) VALUES('8', 'seoul', '+82 10 1234 5678', 'seoul', 'ko', '12345', 'korea');
-- (5) orders 테이블에 새 주문을 추가하세요.
INSERT INTO orders(orderNumber, orderDate, requiredDate, status, customerNumber) VALUES('10426', '2003-12-01', '2003-12-10', 'Shipped', '496');
-- (6) orderdetails 테이블에 주문 상세 정보를 추가하세요.
INSERT INTO orderdetails VALUES('10426', 'S50_1392', '98', '120', '18');
-- (7) payments 테이블에 지불 정보를 추가하세요.
INSERT INTO payments VALUES('103', 'MA765515', '2004-10-19', '33347.88');
-- (8) productlines 테이블에 제품 라인을 추가하세요.
INSERT INTO productlines(productLine) VALUES('super cars');
-- (9) customers 테이블에 다른 지역의 고객을 추가하세요.
INSERT INTO customers (customerNumber, customerName, contactLastName, country) VALUES('101', 'john', 'watson', 'uk');
-- (10) products 테이블에 다른 카테고리의 제품을 추가하세요.
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP) VALUES('S8888', 'idiot', 'super cars', '1:2', 'babo', 'babo', '10', '10', '10');

-- 중급
-- (1) customers 테이블에 여러 고객을 한 번에 추가하세요.
INSERT INTO customers (customerNumber, customerName, contactLastName) VALUES('900', 'john', 'one'), ('901', 'john', 'two');
-- (2) products 테이블에 여러 제품을 한 번에 추가하세요.
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP) 
VALUES('S7777', 'babo', 'Planes', '1:50', 'babo', 'babo', '5', '5', '5'), ('S6666', 'car', 'super cars', '1:5', 'babo', 'babo', '7', '7', '7');
-- (3) employees 테이블에 여러 직원을 한 번에 추가하세요.
INSERT INTO employees(employeeNumber, lastName, firstName, extension, email, officeCode, jobTitle) 
VALUES('9998', 'babo', 'babo', 'x8000', 'b@b.com', 7, 'Sales Rep'), ('9997', 'babo', 'babo', 'x7000', 'c@c.com', 7, 'Sales Rep');
-- (4) orders와 orderdetails에 연결된 주문을 한 번에 추가하세요.
INSERT INTO orders(orderNumber, orderDate, requiredDate, status, customerNumber) VALUES('10427', '2003-12-01', '2003-12-10', 'Shipped', '496');
INSERT INTO orderdetails VALUES('10427', 'S50_1392', '98', '120', '18');
-- (5) payments 테이블에 여러 지불 정보를 한 번에 추가하세요.
INSERT INTO payments VALUES('900', 'MA765515', '2004-10-19', '33347.88'), ('901', 'MA765515', '2004-10-19', '33347.88');
-- (6) customers 테이블에 고객을 추가하고 바로 주문을 추가하세요.
INSERT INTO customers (customerNumber, customerName, contactLastName) VALUES('902', 'john', 'three');
INSERT INTO orders(orderNumber, orderDate, requiredDate, status, customerNumber) VALUES('10428', '2003-12-01', '2003-12-10', 'Shipped', '902');
-- (7) employees 테이블에 직원을 추가하고 바로 직급을 할당하세요. -> 직급(jobTitle)은 애초에 notnull이라 insert시 넣음
INSERT INTO employees(employeeNumber, lastName, firstName, extension, email, officeCode, jobTitle) VALUES('9996', 'babo', 'babo', 'x7000', 'c@c.com', 7, 'Sales Rep');
-- (8) products 테이블에 제품을 추가하고 바로 재고를 업데이트하세요.
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP) VALUES('S5555', 'car', 'super cars', '1:5', 'babo', 'babo', '7', '7', '7');
UPDATE products SET quantityInStock='6' WHERE productCode = 'S5555';
-- (9) offices 테이블에 새 사무실을 추가하고 바로 직원을 할당하세요.
INSERT INTO offices(officeCode, city, phone, addressLine1, country, postalCode, territory) VALUES('9', 'busan', '+82 10 2345 6789', 'busan', 'ko', '12678', 'korea');
UPDATE employees SET officeCode='9' WHERE employeeNumber='9996';
-- (10) productlines 테이블에 제품 라인을 추가하고 바로 여러 제품을 추가하세요.
INSERT INTO productlines(productLine) VALUES('paper plane');
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP) 
VALUES('S6000', 'car', 'paper plane', '1:5', 'babo', 'babo', '7', '7', '7'), ('S6001', 'car', 'paper plane', '1:5', 'babo', 'babo', '7', '7', '7');

-- 고급
-- (1) customers 테이블에 새 고객을 추가하고 바로 주문을 추가하세요.
INSERT INTO customers (customerNumber, customerName, contactLastName) VALUES('903', 'john', 'four');
INSERT INTO orders(orderNumber, orderDate, requiredDate, status, customerNumber) VALUES('10429', '2003-12-01', '2003-12-10', 'Shipped', '903');
-- (2) employees 테이블에 새 직원을 추가하고 바로 그들의 매니저를 업데이트하세요.
INSERT INTO employees(employeeNumber, lastName, firstName, extension, email, officeCode, jobTitle) VALUES('9000', 'babo', 'babo', 'x7000', 'aa@aa.com', 7, 'Sales Rep');
UPDATE employees SET reportsTo='1102' WHERE employeeNumber='9000';
-- (3) products 테이블에 새 제품을 추가하고 바로 그 제품에 대한 주문을 추가하세요.
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP) VALUES('S9000', 'car', 'super cars', '1:5', 'babo', 'babo', '7', '7', '7');
INSERT INTO customers (customerNumber, customerName, contactLastName) VALUES('905', 'john', 'five');
INSERT INTO orders(orderNumber, orderDate, requiredDate, status, customerNumber) VALUES('20000', '2003-12-01', '2003-12-10', 'Shipped', '905');
INSERT INTO orderdetails VALUES('20000', 'S50_1392', '98', '120', '18');
-- (4) orders 테이블에 새 주문을 추가하고 바로 지불 정보를 추가하세요.
INSERT INTO orders(orderNumber, orderDate, requiredDate, status, customerNumber) VALUES('20001', '2003-12-01', '2003-12-10', 'Shipped', '905');
INSERT INTO payments VALUES('905', 'MA765515', '2004-10-19', '33347.88');
-- (5) orderdetails 테이블에 주문 상세 정보를 추가하고 바로 관련 제품의 재고를 감소시키세요.
INSERT INTO orderdetails VALUES('20001', 'S50_1392', '98', '120', '18');
UPDATE products SET quantityInStock=quantityInStock-1 WHERE `productCode`='S50_1392';
