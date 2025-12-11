with a as (
SELECT
CONVERT(INT, order_id) AS order_id,
CONVERT(INT, customer_id) AS customer_id,
CONVERT(INT, store_id) AS store_id,
CONVERT(date, order_date) AS order_date,
TRIM(order_status) AS order_status,
TRIM(dbo.proper(payment_method)) AS payment_method,
COALESCE(UPPER(TRIM(promo_code)),'no promo code') AS promo_code,
CONVERT(DECIMAL(10,2), REPLACE(order_total,',','.')) AS order_total
FROM [coffeeco].[fact_orders]
WHERE order_status not in ('Cancelled', 'Returned')
)

SELECT
promo_code,
COUNT(promo_code) as timesused

FROM a
GROUP BY promo_code
