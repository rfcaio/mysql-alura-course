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
CREATE TABLE IF NOT EXISTS user (
  id INT AUTO_INCREMENT NOT NULL,
  date_of_birth DATE NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  gender ENUM('F', 'M') DEFAULT 'F',
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;
```
