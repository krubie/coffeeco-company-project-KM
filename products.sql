--Nevek cleanelése, deklarált proper() syntax használatával, pénznemek és szóközök eltávolítása
with elso as (
SELECT *,
TRIM(UPPER(sku)) AS cleansku,
TRIM(dbo.proper(product_name)) AS cleanname,
TRIM(dbo.proper(category)) AS cleancategory,
TRIM(dbo.proper(subcategory)) AS cleansubcategory,
CONVERT(decimal(10,2),TRIM(REPLACE(TRANSLATE(unit_cost,'FtFTHUF','       '),',','.'))) AS unitcost1,
CONVERT(decimal(10,2),TRIM(REPLACE(TRANSLATE(unit_price,'FtFTHUF','       '),',','.'))) AS unitprice1

FROM coffeeco.dim_products
),

-- számolt mezõk 
masodik as (
SELECT *,
unitprice1 - unitcost1 AS ProfitPerProduct,
ROUND((unitprice1 - unitcost1) / unitcost1 *100 ,2) AS ROIPerProduct

FROM elso
)

-- végsõ select 
SELECT
product_id,
cleansku AS sku,
cleanname AS product_name,
cleancategory AS category,
cleansubcategory AS subcategory,
unitcost1 AS unit_cost,
unitprice1 AS unit_price,
CONVERT(decimal(10,2),ProfitPerProduct) AS ProfitPerProduct,
CONVERT(decimal(10,2),ROIPerProduct) AS ROIPerProduct,
CONVERT(int,active_flag) AS active_flag

FROM masodik

