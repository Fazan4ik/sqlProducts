-- ������� 1
/*
SELECT p.name, MIN(s.price) AS 'Min sell price', COUNT(s.price) AS 'Num sells'
FROM Product AS p
JOIN Sale AS s ON p.id = s.id_product
GROUP BY p.name */

-- ������� 2
/*
SELECT p.name, AVG(s.price) AS 'avg sell price'
FROM Product AS p
JOIN Sale AS s ON p.id = s.id_product
GROUP BY p.name
HAVING AVG(s.price) > 50 */

-- ������� 3
/*
SELECT c.name AS 'category', COUNT(p.name) AS 'quantity'
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
JOIN Delivery AS d ON p.id = d.id_product
GROUP BY c.name
HAVING AVG(d.price) > 100 */

-- ������� 4
/*
SELECT p.name AS 'Name', SUM(s.price * s.quantity) AS 'sum sells'
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
JOIN Sale AS s ON p.id = s.id_product
WHERE c.name IN ('������', '�������')
GROUP BY p.name */

-- ������� 5
/* 
SELECT s.name, MIN(d.price)
FROM Product AS p
JOIN Delivery AS d ON p.id = d.id_product
JOIN Supplier AS s ON s.id = d.id_supplier
WHERE d.date_of_delivery BETWEEN DATEADD(MONTH, -1, GETDATE()) AND GETDATE()
GROUP BY s.name
ORDER BY 2 */

-- ������� 6
/*
SELECT pr.name AS 'manufacter', COUNT(p.name) AS 'qunantity products', (co.name + ', ' + r.name + ', ' + c.name + ', ' + a.street) AS 'full adress'
FROM Product AS p
JOIN Producer AS pr ON pr.id = p.id_producer
JOIN Address AS a ON a.id = pr.id_address
JOIN City AS c ON c.id = a.id_city
JOIN Region AS r ON r.id = c.id_region
JOIN Country AS co ON co.id = r.id_country
JOIN Sale AS s ON p.id = s.id_product
GROUP BY pr.name, (co.name + ', ' + r.name + ', ' + c.name + ', ' + a.street)
HAVING SUM(s.price) BETWEEN 100 AND 200 */

-- ������� 7
/*
SELECT TOP 1 c.name AS 'category'
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
GROUP BY c.name
ORDER BY COUNT(p.name) */

-- ������� 8
/*
SELECT c.name AS 'category', COUNT(p.name) AS 'quantity'
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
JOIN Delivery AS d ON p.id = d.id_product
JOIN Supplier AS s ON s.id = d.id_supplier
WHERE s.name IN ('�� ��������', '��� ���������', '����� ������')
GROUP BY c.name
HAVING SUM(d.price) > 400 */