use classicmodels;

-- 초급
-- (1) customers 테이블에서 모든 고객 정보를 조회하세요.
SELECT * FROM customers;
-- (2) products 테이블에서 모든 제품 목록을 조회하세요.
SELECT * FROM products;
-- (3) employees 테이블에서 모든 직원의 이름과 직급을 조회하세요.
SELECT lastName, firstName, jobTitle FROM employees;
-- (4) offices 테이블에서 모든 사무실의 위치를 조회하세요.
SELECT country, city, addressLine1 FROM offices;
-- (5) orders 테이블에서 최근 10개의 주문을 조회하세요.
SELECT * FROM orders LIMIT 10;
-- (6) orderdetails 테이블에서 특정 주문의 모든 상세 정보를 조회하세요.
SELECT * FROM orderdetails WHERE `orderNumber`='10100';
-- (7) payments 테이블에서 특정 고객의 모든 지불 정보를 조회하세요.
SELECT * FROM payments WHERE `customerNumber`='103';
-- (8) productlines 테이블에서 각 제품 라인의 설명을 조회하세요.
SELECT productLine,textDescription FROM productlines;
-- (9) customers 테이블에서 특정 지역의 고객을 조회하세요.
SELECT * FROM customers WHERE country='USA';
-- (10) products 테이블에서 특정 가격 범위의 제품을 조회하세요.
SELECT * FROM products where buyPrice BETWEEN 20 and 50;

-- 중급
-- (1) orders 테이블에서 특정 고객의 모든 주문을 조회하세요.
SELECT * FROM orders where customerNumber="353";
-- (2) orderdetails 테이블에서 특정 제품에 대한 모든 주문 상세 정보를 조회하세요.
SELECT * FROM orderdetails WHERE productCode="S18_2325";
-- (3) payments 테이블에서 특정 기간 동안의 모든 지불 정보를 조회하세요.
SELECT * FROM payments where paymentDate BETWEEN "2004-01-01" and "2004-12-31";
-- (4) employees 테이블에서 특정 직급의 모든 직원을 조회하세요.
SELECT * FROM employees WHERE jobTitle="Sales Rep";
-- (5) offices 테이블에서 특정 국가의 모든 사무실을 조회하세요.
SELECT * FROM offices WHERE country="USA";
-- (6) productlines 테이블에서 특정 제품 라인에 속하는 모든 제품을 조회하세요.
SELECT * FROM productlines WHERE `productLine`="Ships";
-- (7) customers 테이블에서 최근에 가입한 5명의 고객을 조회하세요.
SELECT * FROM customers ORDER BY customerNumber DESC LIMIT 5;
-- (8) products 테이블에서 재고가 부족한 모든 제품을 조회하세요.
SELECT * FROM products WHERE quantityInStock<100;
-- (9) orders 테이블에서 지난 달에 이루어진 모든 주문을 조회하세요.
SELECT * FROM orders WHERE orderDate BETWEEN "2024-11-01" and "2024-11-30";
-- (10) orderdetails 테이블에서 특정 주문에 대한 총 금액을 계산하세요.
SELECT SUM(priceEach) as sumPrice FROM orderdetails where productCode="S18_1749";

-- 고급
-- (1) customers 테이블에서 각 지역별 고객 수를 계산하세요.
