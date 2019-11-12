# About

> Code examples based on Alura's SQL course.

## SQL Statements

**CREATE DATABASE**

```sql
CREATE DATABASE IF NOT EXISTS foo
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
```

**CREATE TABLE**

```sql
CREATE TABLE IF NOT EXISTS `user` (
  `id` INT AUTO_INCREMENT NOT NULL,
  date_of_birth DATE NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  gender ENUM('F', 'M') DEFAULT 'F',
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;
```

**ALTER TABLE**

An example of `ADD COLUMN` clause:

```sql
ALTER TABLE `user` ADD COLUMN deleted BOOLEAN DEFAULT 0 AFTER date_of_birth;

ALTER TABLE `user` ADD COLUMN to_be_droped BOOLEAN DEFAULT 1 FIRST;
```

**INSERT INTO**

```sql
INSERT INTO `user` (`name`, gender, email, date_of_birth) VALUES
('bob', 'M', 'bob@mail.com', '1990-11-04'),
('ana', DEFAULT, 'ana@mail.com', '1959-07-11');
```

An example of `DROP COLUMN` clause:

```sql
ALTER TABLE `user` DROP COLUMN to_be_droped;
```

An example of `MODIFY` clause:

```sql
ALTER TABLE `user` MODIFY date_of_birth DATETIME DEFAULT CURRENT_TIMESTAMP;
```

**SELECT**

```sql
SELECT * FROM `user`;

SELECT u.`name` AS `name`, YEAR(u.date_of_birth) AS `year of birth` FROM `user` u;
```

To filter your results, use `WHERE` clause:

```sql
SELECT u.`name` AS `name` FROM `user` u WHERE u.gender = 'F';

SELECT u.email AS email FROM `user` u WHERE u.email IS NULL;
```

An example of `WHERE` clause with boolean values (both queries are equivalent). The constants `TRUE` and `FALSE` evaluate to `1` and `0` and can be written in any lettercase:

```sql
SELECT * FROM `user` WHERE deleted = FALSE;

SELECT * FROM `user` WHERE deleted = 0;
```

An example of `BETWEEN` clause (both queries are equivalent):

```sql
SELECT * FROM `user` u WHERE u.date_of_birth >= '1990-01-01' AND u.date_of_birth <= '1999-12-31';

SELECT * FROM `user` u WHERE u.date_of_birth BETWEEN '1990-01-01' AND '1999-12-31';
```

An example of `LIKE` clause:

```sql
SELECT u.`name` AS `name` FROM `user` u WHERE u.`name` LIKE '%Caio%';
```

**UPDATE**

```sql
UPDATE `user` SET gender = 'F' WHERE id = 3;
```

**DELETE**

```sql
DELETE FROM `user` WHERE YEAR(date_of_birth) >= 1990;
```
