-- 1) Gəlirə görə TOP 5 müştərilər kimlərdir?

SELECT
     c.CustomerID,
     c.CompanyName,
     c.Country,
     SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) AS TotalRevenue
FROM Customers AS c
JOIN Orders AS o
     ON c.CustomerID = o.CustomerID
JOIN "Order Details" AS od
     ON o.OrderID = od.OrderID
GROUP BY
     c.CustomerID,
     c.CompanyName,
     c.Country
ORDER BY TotalRevenue DESC
LIMIT 5;


-- 2) Hansı məhsullar daha çox satılır və yüksək tələbat görür?

SELECT
     p.ProductID,
     p.ProductName,
     SUM(od.Quantity) AS TotalSold
FROM Products AS p
JOIN "Order Details" AS od
     ON p.ProductID = od.ProductID
GROUP BY
     p.ProductID,
     p.ProductName
HAVING
     SUM(od.Quantity) >= 200000
ORDER BY TotalSold DESC;
