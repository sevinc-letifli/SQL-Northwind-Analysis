Correlated Subquery və JOIN performans müqayisəsi

--Correlated Subquery yanaşması

SELECT
    c.CustomerID,
    c.CompanyName,
    (
        SELECT COUNT(*)
        FROM Orders AS o
        WHERE o.CustomerID = c.CustomerID
    ) AS TotalOrders
FROM Customers AS c;     --icra müddəti : 498ms



--JOIN yanaşması

SELECT
    c.CustomerID,
    c.CompanyName,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.CompanyName;    -- icra müddəti : 119ms
