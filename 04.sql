
SELECT AVG(price) as Average FROM purchase WHERE purchase_date < '2018-05-12';

SELECT payment_way as `Payment Way`, SUM(price) as Total FROM purchase WHERE purchase_date < '2018-10-10' GROUP BY payment_way;

SELECT COUNT(*) as `Count` FROM purchase WHERE purchase_date < '2018-05-12' AND received = 1;

SELECT payment_way as `Payment Way`, received as Received, SUM(price) as Total FROM purchase GROUP BY payment_way, received;
