--4.G�R�LEN BAY��D N�N VE �R�N�N KODUNUN STOK DURUMUNU G�STEREN PROC.
CREATE PROCEDURE SP_DEALER_STOCK_STATE
@DEALERID INT,
@PRODUCTCODE NVARCHAR(20)
AS
SELECT DEALERID,DEALERNAME,P.PRODUCTID,PRODUCTCODE,PRODUCTNAME, STOCKPIECE 
FROM COMPANY_PRODUCTDEALER PD
INNER JOIN PRODUCT_PRODUCT P ON P.PRODUCTID=PD.PRODUCTID
INNER JOIN COMPANY_DEALERS D ON D.ID=PD.DEALERID
WHERE DEALERID=@DEALERID AND PRODUCTCODE=@PRODUCTCODE

EXEC SP_DEALER_STOCK_STATE @DEALERID='1',@PRODUCTCODE='KDN28NW20N'