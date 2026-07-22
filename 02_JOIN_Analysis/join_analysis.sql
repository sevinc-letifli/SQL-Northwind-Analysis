-- 1) Şirkətin ən çox satış etdiyi ölkələr hansılardır?

SELECT
    c.Country,
    SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) AS TotalSales
FROM Customers c
JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
JOIN "Order Details" AS od
    ON o.OrderID = od.OrderID
GROUP BY c.Country
ORDER BY TotalSales DESC;


-- 2) Şirkətdə hər bir işçi kimə hesabat verir və struktur necə qurulub?

SELECT
    e.EmployeeID,
    e.FirstName || ' ' || e.LastName AS EmployeeName,
    e.Title AS EmployeeTitle,
    m.EmployeeID AS ManagerID,
    m.FirstName || ' ' || m.LastName AS ManagerName,
    m.Title AS ManagerTitle
FROM Employees AS e
LEFT JOIN Employees AS m
    ON e.ReportsTo = m.EmployeeID
ORDER BY ManagerName, EmployeeName;


-- 3) Son 1 ildə sifariş verməyən müştərilər hansılardır?

SELECT
     c.CustomerID,
     c.CompanyName,
     c.Country,
     MAX(o.OrderDate) AS LastOrderDate
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.CompanyName,
    c.Country
HAVING 
     julianday('now') - julianday(LastOrderDate) > 365
ORDER BY LastOrderDate;
