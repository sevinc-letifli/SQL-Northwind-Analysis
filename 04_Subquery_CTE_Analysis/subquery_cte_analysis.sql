-- 1) Hansı müştərilər şirkətin orta müştəri gəlirindən daha çox gəlir gətirir?

WITH CusRev AS
(
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
)

SELECT
    CustomerID,
    CompanyName,
    Country,
    TotalRevenue
FROM CusRev
WHERE TotalRevenue >
(
    SELECT AVG(TotalRevenue)
    FROM CusRev
)
ORDER BY TotalRevenue DESC;
