sql_basics
--joins--
--inner joins--
USE bookstore;

SELECT o.itemid, c.customername
FROM orderinfo AS o
INNER JOIN customer AS c ON o.customerid = c.customerid;

SELECT a.authorname, i.booktitle
FROM author AS a
INNER JOIN item AS i ON a.authorid = i.authorid;

--left join--
SELECT i.booktitle, a.authorname
FROM item AS i
LEFT JOIN author AS a ON i.authorid = a.authorid
ORDER BY i.booktitle;

SELECT c.customername, o.itemid
FROM customer AS c
LEFT JOIN orderinfo AS o ON c.customerid = o.customerid
ORDER BY c.customername;

--self join--
--table joined to itself, used to reference itself.--
SELECT e.firstname AS EmplyeeName, em.firstname AS ManagerName
FROM employees e
INNER JOIN employees em
ON e.managerid = em.managerid;

--Cross Join--
--number of rows of first table multiplied by rows on second table.
--all results returned
--not the most effective nor recommended

SELECT  * 
FROM item
CROSS JOIN author;

--UNION--
--Joins two or more select statements but only returns the unique values
SELECT city from customer
UNION
SELECT city FROM supplier
ORDER BY city;

--UNION ALL --
--returns all values, including duplicates
SELECT city from customer
UNION ALL
SELECT city FROM supplier
ORDER BY city;
