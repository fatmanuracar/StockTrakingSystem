--3.�R�N G�RE BAKIM SAYILARINI GET�REN V�EW

CREATE VIEW PRODUCT_MAINTENANCE
AS
SELECT PRODUCTNAME, PRODUCTCODE, 
COUNT(SERVICE_) AS NUMBER_OF_MAINTENANCE
FROM PRODUCT_PRODUCT P
INNER JOIN COMPANY_AUTHORIZEDSERVICEDETAILS ASD ON ASD.PRODUCTID=P.PRODUCTID
GROUP BY PRODUCTNAME, PRODUCTCODE

SELECT * FROM PRODUCT_MAINTENANCE