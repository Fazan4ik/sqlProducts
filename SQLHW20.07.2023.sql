-- Задание 1
/*
SELECT p.name AS 'product', c.name AS 'category', s.name AS 'deliverer'
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
JOIN Delivery AS d ON p.id = d.id_product
JOIN Supplier AS s ON s.id = d.id_supplier
WHERE s.name IN ('ООО Паньки', 'ООО Какие люди') */

-- Задание 2
/*
SELECT p.name AS 'Product', c.name AS 'category', s.name AS 'поставщик', pr.name AS 'producer'
FROM Product AS p
JOIN Delivery AS d ON p.id = d.id_product
JOIN Supplier AS s ON s.id = d.id_supplier
JOIN Producer as pr ON pr.id = p.id_producer
JOIN Category AS c ON c.id = p.id_category
WHERE pr.name NOT LIKE '%[АКМ]%' AND c.name != 'Крупы' */

-- Задание 3
/*
SELECT p.name AS 'Product', c.name AS 'category', s.name AS 'delivery' , d.price,
d.date_of_delivery, co.name AS 'country of delivery'
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
JOIN Delivery AS d ON p.id = d.id_product
JOIN Supplier AS s ON s.id = d.id_supplier
JOIN Producer AS pr ON pr.id = p.id_producer
JOIN Address AS a ON a.id = pr.id_address
JOIN City AS ci ON ci.id = a.id_city
JOIN Region AS r ON r.id = ci.id_region
JOIN Country AS co ON co.id = r.id_country
WHERE co.name NOT IN ('Украина', 'Молдова', 'Польша') AND d.price < 2000
AND d.date_of_delivery BETWEEN '2023-05-10' AND GETDATE() */

-- Задание 4
/*
SELECT p.name, c.name, s.quantity, sup.name, pr.name
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
JOIN Sale AS s ON p.id = s.id_product
JOIN Delivery AS d ON p.id = d.id_product
JOIN Supplier AS sup ON sup.id = d.id_supplier
JOIN Producer AS pr ON pr.id = p.id_producer
WHERE c.name IN ('Кондитерские изделия', 'Безалкогольные напитки') AND s.quantity > 100 */

-- Задание 5
/*
SELECT p.name AS 'Product', c.name AS 'category', s.name AS 'deliverer',
d.date_of_delivery, d.price AS 'price delivery'
FROM Product AS p
JOIN Delivery AS d ON p.id = d.id_product
JOIN Supplier AS s ON s.id = d.id_supplier
JOIN Category AS c ON c.id = p.id_category
WHERE s.name IN ('ТОВ Снабжение', 'Супер закупка', 'Фрукт постав')
ORDER BY p.name */

-- Задание 6
SELECT p.name AS 'Product', pr.name AS 'Producer', (co.name + ', ' + c.name + ', ' + a.street) AS 'Full adress',
cat.name AS 'Category', s.date_of_sale AS 'Date of sell', s.price AS 'Sell price'
FROM Product AS p
JOIN Producer AS pr ON pr.id = p.id_producer
JOIN Address AS a ON a.id = pr.id_address
JOIN City AS c ON c.id = a.id_city
JOIN Region AS r ON r.id = c.id_region
JOIN Country AS co ON co.id = r.id_country
JOIN Category AS cat ON cat.id = p.id_category
JOIN Sale AS s ON p.id = s.id_product
WHERE pr.name NOT IN ('ТОВ Снабжение', 'Супер закупка')
ORDER BY s.price DESC
  
  