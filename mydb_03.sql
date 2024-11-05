--1
--вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;
SELECT * FROM products;
--вибрати тільки стовпчики name, phone з таблиці shippers,
SELECT name, phone FROM shippers;

--2
--знайти середнє,максимальне та мінімальне значення стовпчика price таблички products
SELECT
    ROUND(AVG(price), 2) as avg_price,
    MAX(price) as max_price,
    MIN(price) as min_price
FROM products;

--3
--вибрати унікальні значення стовпчиків category_id, price з таблиці products, відсортувати по price в порядку спадання та вивести перші 10
SELECT DISTINCT
    category_id,
    price
FROM products
ORDER BY price DESC
LIMIT 10;

--4
--знайти кількість продуктів (рядків),які знаходиться в цінових межах від 20 до 100
SELECT COUNT(*) as cnt_products
FROM products
WHERE
    price BETWEEN 20 AND 100;

--5
--знайти кількість продуктів (рядків) та середню ціну (price) у кожного постачальника (supplier_id)
SELECT
    supplier_id,
    COUNT(*) as cnt_products,
    ROUND(AVG(price), 2) as avg_price
FROM products
GROUP BY
    supplier_id;