-- 1) İşçilərin idarə etdikləri sifariş sayına əsasən performans sıralaması necədir?

SELECT
    e.EmployeeID,
    e.FirstName || ' ' || e.LastName AS EmployeeName,
    e.Title,
    COUNT(o.OrderID) AS TotalOrders,
    RANK() OVER (ORDER BY COUNT(o.OrderID) DESC) AS Rank,
    DENSE_RANK() OVER (ORDER BY COUNT(o.OrderID) DESC) AS DenseRank,
    ROW_NUMBER() OVER (ORDER BY COUNT(o.OrderID) DESC) AS RowNumber
FROM Employees AS e
JOIN Orders AS o
    ON e.EmployeeID = o.EmployeeID
GROUP BY
    e.EmployeeID,
    e.Title,
    EmployeeName;
