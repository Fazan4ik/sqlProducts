-- 1 �������
/*
SELECT name, price, quantity, discount, country, price * quantity * (1 - discount / 100) AS '�������'
FROM TableProducts
WHERE name LIKE '%������%' OR name LIKE '%����%' */

-- 2 �������
/*
SELECT *
FROM TableProducts
WHERE (date_of_delivery = CAST(GETDATE() AS DATE) OR date_of_delivery = CAST(GETDATE() - 1 AS DATE)) AND quantity >= 10 */

-- 3 �������
/*
SELECT name, price, date_of_delivery
FROM TableProducts
WHERE date_of_delivery >= DATEADD(MONTH, -1, GETDATE())
ORDER BY 3 */

-- 4 �������
/*
SELECT name, price, category, producer
FROM TableProducts
WHERE category = '������������ �������' AND producer != 'Roshen' */

-- 5 �������
/*
SELECT *
FROM TableProducts
WHERE name LIKE '�%' AND category LIKE '%�%' */

-- 6 �������
/*
SELECT *
FROM TableProducts
WHERE name LIKE '[�-�]%' */

-- 7 �������
/*
SELECT *
FROM TableProducts
WHERE price < 50 AND date_of_delivery >= CAST('2023-05-01' AS DATE) AND date_of_delivery < CAST(GETDATE() AS DATE)
ORDER BY date_of_delivery */

-- 8 �������
/*
SELECT *
FROM TableProducts
WHERE category = '�������������� �������' AND quantity > 100 */

-- 9 �������
/*
SELECT name, price, country
FROM TableProducts
WHERE price BETWEEN 100 AND 200
ORDER BY 2 */

-- 10 �������
/*
UPDATE TableProductsCopy SET price *= 0.95
SELECT *
FROM TableProductsCopy */

-- 11 �������
/*
UPDATE TableProductsCopy
SET date_of_delivery = CAST(GETDATE() AS DATE)
WHERE date_of_delivery IS NULL */

-- 12 �������
/*
DELETE FROM TableProductsCopy 
WHERE quantity < 500 AND price > 70 */

-- 13 �������
/*
DELETE FROM TableProductsCopy
WHERE category IN ('����������� �������', '������������ �������') */

-- 14 ������� 
/*
DELETE FROM TableProductsCopy
WHERE LEN(name) = 5 */

-- 15 �������
/*
DELETE FROM TableProductsCopy
WHERE date_of_delivery <= DATEADD(MONTH, -3, GETDATE()) */

-- 16 �������
/* 
SELECT TOP 5 name, price, country
FROM TableProducts
ORDER BY 2 DESC */

-- 17 ������� 
/* 
DELETE FROM TableProductsCopy
WHERE producer IS NULL OR discount > 10 */
