SELECT
 *,
 ROUND(s.quantity*p.purchase_price, 2) as purchase_cost,
 ROUND(s.revenue - s.quantity*p.purchase_price, 2) as margin
FROM {{ref("stg_raw__sales")}} s
LEFT JOIN {{ref("stg_raw__product")}} p
USING (products_id)