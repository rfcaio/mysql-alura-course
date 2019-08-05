
SELECT AVG(price) AS Average FROM purchase WHERE purchase_date < '2018-05-12';

SELECT payment_way AS `Payment Way`, SUM(price) AS Total FROM purchase WHERE purchase_date < '2018-10-10' GROUP BY payment_way;

SELECT COUNT(*) AS `Count` FROM purchase WHERE purchase_date < '2018-05-12' AND received = 1;

SELECT payment_way AS `Payment Way`, received AS Received, SUM(price) AS Total FROM purchase GROUP BY payment_way, received;
