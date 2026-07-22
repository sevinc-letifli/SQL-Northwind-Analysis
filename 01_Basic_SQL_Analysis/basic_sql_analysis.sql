-- 1) Hazırda satışda olan ən yüksək qiymətli 10 məhsul hansılardır?

SELECT 
	   ProductID,
	   ProductName,
	   UnitPrice,
	   UnitsInStock,
	   Discontinued
FROM Products
WHERE Discontinued = 0
ORDER BY UnitPrice DESC
LIMIT 10;


-- 2) Hazırda stockda müəyyən edilmiş limitdən aşağı olan və yenidən sifariş tələb edən məhsullar hansılardır?

SELECT
      ProductID,
      ProductName,
      UnitsInStock,
      ReorderLevel,
      UnitsOnOrder,
      Discontinued
FROM Products
WHERE UnitsInStock <= ReorderLevel AND Discontinued = 0 AND UnitsOnOrder = 0
ORDER BY UnitsInStock ASC;


-- 3) Tələb olunan çatdırılma tarixindən gec göndərilən sifarişlər hansılardır?

SELECT 
	  OrderID,
	  CustomerID,
	  EmployeeID,
	  OrderDate,
	  RequiredDate,
	  ShippedDate
FROM Orders
WHERE RequiredDate < ShippedDate;


-- 4) Qiyməti yüksək olan, lakin stok səviyyəsi kritik olan məhsullar hansılardır?

SELECT
      ProductID,
      ProductName,
	  UnitPrice,
      UnitsInStock,
      ReorderLevel,
      Discontinued
FROM Products
WHERE UnitsInStock <= ReorderLevel AND Discontinued = 0 
ORDER BY UnitPrice DESC;


-- 5) Satışdan çıxarılan, amma hələ də stockda qalan məhsullar hansılardır?

SELECT
    ProductID,
    ProductName,
    UnitsInStock,
    UnitPrice,
	ReorderLevel,
	Discontinued
FROM Products
WHERE Discontinued = 1 AND UnitsInStock > 0
ORDER BY UnitsInStock DESC;


-- 6) Göndərilmə vaxtı yaxınlaşan, amma hələ göndərilməyən sifarişlər hansılardır?

SELECT
    OrderID,
    CustomerID,
    OrderDate,
    RequiredDate,
    ShippedDate
FROM Orders
WHERE ShippedDate IS NULL
ORDER BY RequiredDate ASC;
