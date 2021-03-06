
ALTER TABLE purchase ADD COLUMN payment_way ENUM('CASH', 'CREDIT CARD', 'DEBIT CARD') AFTER description;
UPDATE purchase SET payment_way = 'CASH' WHERE payment_way IS NULL;
ALTER TABLE purchase MODIFY COLUMN payment_way ENUM('CASH', 'CREDIT CARD', 'DEBIT CARD') NOT NULL DEFAULT 'CASH';

ALTER TABLE purchase MODIFY COLUMN received TINYINT(1) DEFAULT 0;

ALTER TABLE purchase MODIFY COLUMN description VARCHAR(255) NOT NULL;
