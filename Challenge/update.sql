-- 초급
-- (1) customers 테이블에서 특정 고객의 주소를 갱신하세요.
UPDATE customers SET `addressLine1`="home" WHERE `customerNumber`="100";
-- (2) products 테이블에서 특정 제품의 가격을 갱신하세요.
UPDATE products SET buyPrice="100" WHERE `productCode`="S6666";
-- (3) employees 테이블에서 특정 직원의 직급을 갱신하세요.
UPDATE employees SET jobTitle="Sales Manager (KO)" WHERE employeeNumber="9000";
-- (4) offices 테이블에서 특정 사무실의 전화번호를 갱신하세요.
UPDATE offices SET phone="+82 10 9874 6541"  WHERE officeCode="9";
-- (5) orders 테이블에서 특정 주문의 상태를 갱신하세요.
UPDATE orders SET status="Cancelled" WHERE orderNumber="10199";
-- (6) orderdetails 테이블에서 특정 주문 상세의 수량을 갱신하세요.
UPDATE orderdetails SET quantityOrdered="55" WHERE orderNumber="10109" and productCode="S18_3232";
-- (7) payments 테이블에서 특정 지불의 금액을 갱신하세요.
UPDATE payments SET amount="22222" WHERE customerNumber="189";
-- (8) productlines 테이블에서 특정 제품 라인의 설명을 갱신하세요.
UPDATE productlines SET textDescription="good" WHERE productLine="super cars";
-- (9) customers 테이블에서 특정 고객의 이메일을 갱신하세요. << 이메일이 없어서 주소로 대체
UPDATE customers SET addressLine2="sweet home" WHERE customerNumber="100";
-- (10) products 테이블에서 여러 제품의 가격을 한 번에 갱신하세요.
UPDATE products SET buyPrice="77" WHERE productCode="S5555" or productCode="S6000";