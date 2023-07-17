-- 1 задание
/*
SELECT name, price, quantity, discount, country, price * quantity * (1 - discount / 100) AS 'выручка'
FROM TableProducts
WHERE name LIKE '%молоко%' OR name LIKE '%хлеб%' */

-- 2 задание
/*
SELECT *
FROM TableProducts
WHERE (date_of_delivery = CAST(GETDATE() AS DATE) OR date_of_delivery = CAST(GETDATE() - 1 AS DATE)) AND quantity >= 10 */

-- 3 задание
/*
SELECT name, price, date_of_delivery
FROM TableProducts
WHERE date_of_delivery >= DATEADD(MONTH, -1, GETDATE())
ORDER BY 3 */

-- 4 задание
/*
SELECT name, price, category, producer
FROM TableProducts
WHERE category = 'Кондитерские изделия' AND producer != 'Roshen' */

-- 5 задание
/*
SELECT *
FROM TableProducts
WHERE name LIKE 'К%' AND category LIKE '%А%' */

-- 6 задание
/*
SELECT *
FROM TableProducts
WHERE name LIKE '[В-Л]%' */

-- 7 задание
/*
SELECT *
FROM TableProducts
WHERE price < 50 AND date_of_delivery >= CAST('2023-05-01' AS DATE) AND date_of_delivery < CAST(GETDATE() AS DATE)
ORDER BY date_of_delivery */

-- 8 задание
/*
SELECT *
FROM TableProducts
WHERE category = 'Безалкогольные напитки' AND quantity > 100 */

-- 9 задание
/*
SELECT name, price, country
FROM TableProducts
WHERE price BETWEEN 100 AND 200
ORDER BY 2 */

-- 10 задание
/*
UPDATE TableProductsCopy SET price *= 0.95
SELECT *
FROM TableProductsCopy */

-- 11 задание
/*
UPDATE TableProductsCopy
SET date_of_delivery = CAST(GETDATE() AS DATE)
WHERE date_of_delivery IS NULL */

-- 12 задание
/*
DELETE FROM TableProductsCopy 
WHERE quantity < 500 AND price > 70 */

-- 13 задание
/*
DELETE FROM TableProductsCopy
WHERE category IN ('алкогольные напитки', 'кондитерские изделия') */

-- 14 задание 
/*
DELETE FROM TableProductsCopy
WHERE LEN(name) = 5 */

-- 15 задание
/*
DELETE FROM TableProductsCopy
WHERE date_of_delivery <= DATEADD(MONTH, -3, GETDATE()) */

-- 16 задание
/* 
SELECT TOP 5 name, price, country
FROM TableProducts
ORDER BY 2 DESC */

-- 17 задание 
/* 
DELETE FROM TableProductsCopy
WHERE producer IS NULL OR discount > 10 */
