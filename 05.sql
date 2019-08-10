
SELECT `name`, price FROM client JOIN purchase ON client.id = purchase.client_id WHERE purchase_date < '2018-08-09';

SELECT purchase.id, `description` FROM client JOIN purchase ON client.id = purchase.client_id WHERE client.id = 1;

SELECT purchase.* FROM client JOIN purchase ON client.id = purchase.client_id WHERE client.name LIKE 'Paula%';

SELECT client.name, SUM(purchase.price) AS total FROM client JOIN purchase ON client.id = purchase.client_id GROUP BY client.id;
