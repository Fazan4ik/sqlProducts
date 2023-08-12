-- �������� 1
/* 
SELECT p.name
FROM Product AS p
WHERE p.id IN (SELECT TOP 1 id_product
FROM Sale AS s
GROUP BY id_product
ORDER BY COUNT(id_product) DESC) */

-- �������� 2
/*
SELECT c.name AS '�����', CAST(COUNT(p.name) AS float) / (SELECT COUNT(*) FROM Product) * 100 AS '%'
FROM Product AS p
JOIN Category AS c ON c.id = p.id_category
JOIN Sale AS s ON p.id = s.id_product
GROUP BY c.name */

-- �������� 3
/* 
SELECT s.name AS '����������'
FROM Supplier AS s
WHERE s.id IN (SELECT id_supplier FROM Delivery AS d WHERE d.id_product IN (SELECT id FROM Product AS p WHERE p.name NOT LIKE '������')) */

-- �������� 4
/*
SELECT p.name AS '����� ���������'
FROM Producer p
WHERE p.id_address IN (
    SELECT pr.id_address
    FROM Producer pr
    WHERE pr.name = '��� ������������� �����')
	*/

-- �������� 5
/*
SELECT p.name AS '����� ���������'
FROM Producer p
WHERE (SELECT COUNT(*) FROM Product pr WHERE pr.id_producer = p.id) >
      (SELECT COUNT(*) FROM Product WHERE id_producer IN (
          SELECT id FROM Producer WHERE name = '��� ���������'))
*/

-- �������� 6
/* 
SELECT s.date_of_sale AS '���� �������', SUM(s.quantity) AS 'ʳ������ �������'
FROM Sale AS s
WHERE s.date_of_sale BETWEEN '2023-01-01' AND GETDATE()
GROUP BY s.date_of_sale
ORDER BY 1 DESC */

-- �������� 7
/*
SELECT temp.category AS '��������', COUNT(temp.name) AS 'ʳ������ ������ ��� ��������'
FROM
(
    SELECT p.name, c.name AS 'category' FROM Product AS p JOIN Category AS c ON c.id = p.id_category
    EXCEPT
    SELECT p.name, c.name AS 'category' FROM Product AS p JOIN Category AS c ON c.id = p.id_category JOIN Sale AS s ON p.id = s.id_product
    WHERE s.quantity IS NOT NULL AND s.date_of_sale > DATEADD(MONTH, -3, GETDATE())
) AS temp

GROUP BY temp.category */