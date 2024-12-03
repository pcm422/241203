use classicmodels;

-- 초급
-- (1) customers 테이블에서 특정 고객을 삭제하세요.
DELETE FROM customers WHERE customerNumber="101";
-- (2) products 테이블에서 특정 제품을 삭제하세요.
DELETE FROM products WHERE `productCode`="S5555";
-- (3) employees 테이블에서 특정 직원을 삭제하세요.
DELETE FROM employees WHERE employeeNumber="9999";
-- (4) offices 테이블에서 특정 사무실을 삭제하세요.
DELETE FROM offices WHERE officeCode="8";
-- (5) orders 테이블에서 특정 주문을 삭제하세요.
DELETE FROM orders WHERE orderNumber= "10199";
-- (6) orderdetails 테이블에서 특정 주문 상세를 삭제하세요.
DELETE FROM orderdetails WHERE orderNumber="10109";
-- (7) payments 테이블에서 특정 지불 내역을 삭제하세요.
DELETE FROM payments WHERE customerNumber="189";
-- (8) productlines 테이블에서 특정 제품 라인을 삭제하세요.
DELETE FROM productlines WHERE productLine="power car";
-- (9) customers 테이블에서 특정 지역의 모든 고객을 삭제하세요.
DELETE FROM customers WHERE city="Seoul";
-- (10) products 테이블에서 특정 카테고리의 모든 제품을 삭제하세요.
DELETE FROM products WHERE productLine="super cars";