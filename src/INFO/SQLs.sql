
-- БАЗА ДАНИХ
-- Можливість створення БД з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Можемо створити БД через візуальний інструмент, наприклад,
-- MySQL Workbench.
CREATE DATABASE demo_db;

-- ТАБЛИЦІ
-- Можливість створення таблиць БД, з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Попередньо, необхідно спроектувати таблиці та їх зв'язки,
-- на основі сутностей реального світу.
-- Можемо створити таблиці БД через візуальний інструмент, наприклад,
-- MySQL Workbench.

CREATE TABLE IF NOT EXISTS users
( id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(128) NOT NULL,
  email VARCHAR(128) NOT NULL,
  PRIMARY KEY (id)
);


-- Порівняння HQL та SQL

-- HQL
INSERT INTO User (firstName, email) VALUES (:firstName, :email)
-- SQL
INSERT INTO users (first_name, email) VALUES (:first_name, :email)


-- HQL
FROM User
-- SQL
SELECT * FROM users


-- HQL
UPDATE User SET phone = :phone WHERE id = :id
-- SQL
UPDATE users SET phone = :phone WHERE id = :id


-- HQL
DELETE FROM User WHERE id = :id
-- SQL
DELETE FROM users WHERE id = :id;
