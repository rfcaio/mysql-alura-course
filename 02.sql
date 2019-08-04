
UPDATE purchase SET description = 'PREPARING FOR CHRISTMAS' WHERE purchase_date BETWEEN '2018-12-01' AND '2018-12-20';

UPDATE purchase SET price = price + 10 WHERE purchase_date < '2018-06-01';

UPDATE purchase SET description = 'RECEIVED BEFORE MARCH', received = 1 WHERE purchase_date < '2018-03-01';

DELETE FROM purchase WHERE purchase_date BETWEEN '2018-03-05' AND '2018-03-20';

SELECT * FROM purchase WHERE NOT purchase_date = '2018-02-21';
