--4.�R�N KATEGOR�S� 1 OLAN �R�N ���N  BAY� BAZLI STOK ADETLER�N� V�EW

CREATE VIEW PRODUCTCODE_1_STOCK
AS
SELECT PRODUCTNAME,PRODUCTCODE, DEALERID, 
SUM(STOCKPIECE) AS TOTAL_STOCK
FROM PRODUCT_PRODUCT P
INNER JOIN PRODUCT_PRODUCTCATEGORIES PC ON PC.ID=P.CATEGORYID
INNER JOIN PRODUCT_PRODUCTSUBCATEGORIES PSC ON PSC.CATEGORYID=PC.ID
INNER JOIN COMPANY_PRODUCTDEALER PD ON PD.PRODUCTID=P.PRODUCTID
WHERE PSC.CATEGORYID=1
GROUP BY PRODUCTCODE, DEALERID,PRODUCTNAME