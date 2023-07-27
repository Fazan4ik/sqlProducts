-- Задание 1
/*
SELECT p.name AS 'Product', pr.name AS 'Producer'
FROM Product AS p
RIGHT JOIN Producer AS pr ON pr.id = p.id_producer */

-- Задание 2 
/*
SELECT p.name AS 'Product', s.name AS 'supplier', d.date_of_delivery AS 'date of delivery', d.id_supplier
FROM Product AS p
JOIN Delivery AS d ON p.id = d.id_product
RIGHT JOIN Supplier AS s ON s.id = d.id_supplier
ORDER BY d.id_supplier */

-- Задание 3
/*
SELECT name
FROM Category
EXCEPT
SELECT DISTINCT c.name
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
JOIN Producer AS pr ON pr.id = p.id_producer
WHERE pr.name = 'Нли Ю' */

-- Задание 4
/*
SELECT name
FROM Producer
EXCEPT
SELECT pr.name
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
JOIN Producer AS pr ON pr.id = p.id_producer
WHERE c.name = 'Молочные' */