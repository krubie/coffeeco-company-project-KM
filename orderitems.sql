with elso as (
SELECT
CONVERT(int, order_item_id) AS order_item_id,
CONVERT(int, fact_order_items.order_id) AS order_id,
customer_id,
store_id,
CONVERT(date,order_date) AS order_date,
CONVERT(int, fact_order_items.product_id) AS product_id,
CONVERT(int, quantity) AS quantity,
CONVERT(DECIMAL(10,2), fact_order_items.unit_price) AS unit_price,
CONVERT(decimal(10,2),TRIM(REPLACE(TRANSLATE(unit_cost,'FtFTHUF','       '),',','.'))) AS unitcost,
CONVERT(DECIMAL(10,2), discount_pct)  AS discount_pct,
CONVERT(DECIMAL(10,2), line_total) AS line_total,
order_status,
COALESCE(promo_code,'no promo code') AS promo_code,
payment_method


from [coffeeco].[fact_order_items]

JOIN coffeeco.fact_orders ON fact_order_items.order_id = fact_orders.order_id
JOIN coffeeco.dim_products ON fact_order_items.product_id = coffeeco.dim_products.product_id
WHERE order_status not in ('Cancelled', 'Returned')
)


SELECT *

FROM elso
order by order_item_id, product_id