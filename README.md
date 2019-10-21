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

**INSERT INTO**

```sql
INSERT INTO `user` (`name`, gender, email, date_of_birth) VALUES
('bob', 'M', 'bob@mail.com', '1990-11-04'),
('ana', DEFAULT, 'ana@mail.com', '1959-07-11');
```

**SELECT**

```sql
SELECT * FROM `user`;

SELECT u.`name` AS `name`, YEAR(u.date_of_birth) AS `year of birth` FROM `user` u;
```
