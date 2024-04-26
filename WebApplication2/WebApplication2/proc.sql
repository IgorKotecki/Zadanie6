CREATE PROCEDURE AddProductToWarehouse @IdProcedury INT, @IdWarehouse INT, @Amount INT, @CreatedAt DATETIME
AS
BEGIN
    DECLARE @IdOrder INT,@Price DECIMAL(25,2);
    SELECT TOP 1 @IdOrder = O.IdOrder FROM ORDER O 
    INNER JOIN Product_Warehouse pw ON O.IdOrder = pw.IdOrder
    WHERE O.IdProduct = @IdProduct AND O.Amount = @Amount AND O.CreatedAt > @CreatedAt;

IF NOT EXISTS(SELECT 1 FROM Warehouse WHERE IdWarehouse=@IdWarehouse)
BEGIN  
  RAISERROR('Invalid parameter: Provided IdWarehouse does not exist', 18, 0);  
  RETURN;
END;  
    
IF @Price IS NULL
BEGIN  
  RAISERROR('Invalid parameter: Provided IdProduct does not exist', 18, 0);  
  RETURN;
END;  
  
 IF @IdOrder IS NULL
BEGIN  
  RAISERROR('Invalid parameter: There is no order to fullfill', 18, 0);  
  RETURN;
END; 