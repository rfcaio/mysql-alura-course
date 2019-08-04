
SELECT description, price FROM purchase WHERE purchase_date >= '2018-02-21';

SELECT * FROM purchase WHERE purchase_date >= '2018-02-21' AND purchase_date < '2018-09-25';

SELECT * FROM purchase WHERE price BETWEEN 150 AND 350 AND description LIKE 'Fantastic%';

SELECT * FROM purchase WHERE received = true;

SELECT * FROM purchase WHERE received = 0;

SELECT * FROM purchase WHERE price > 500 OR received = 1;

SELECT * FROM purchase WHERE price >= 100 AND price <= 300 OR price > 500;
