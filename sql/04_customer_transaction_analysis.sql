SELECT
    daily_sale_id,
    store_id,
    date_id,
    product_id,
    footfall,
    total_transactions

FROM public.fact_daily_sales

WHERE store_id = 19
  AND date_id = 206

ORDER BY product_id ASC;



SELECT
    COUNT(*) AS record_count,
    COUNT(DISTINCT date_id) AS distinct_dates,
    COUNT(DISTINCT product_id) AS distinct_products

FROM public.fact_daily_sales

WHERE store_id = 32;


SELECT
    dd.year,
    COUNT(*) AS record_count,
    COUNT(DISTINCT fds.date_id) AS distinct_days,
    COUNT(DISTINCT fds.product_id) AS distinct_products

FROM public.fact_daily_sales AS fds
JOIN public.dim_date AS dd
    ON fds.date_id = dd.date_id
WHERE fds.store_id = 32
GROUP BY dd.year
ORDER BY dd.year ASC;



-- Analysis 10 — Sales Decline Investigation

SELECT
    fds.store_id,
    ds.store_name,
    ds.region,

    COUNT(fds.daily_sale_id) AS record_count,

    SUM(fds.footfall) AS summed_footfall,
    SUM(fds.total_transactions) AS summed_transactions,

    ROUND(AVG(fds.total_transactions), 2)
        AS avg_transactions_per_record

FROM public.fact_daily_sales AS fds

JOIN public.dim_store AS ds
    ON fds.store_id = ds.store_id

JOIN public.dim_date AS dd
    ON fds.date_id = dd.date_id

WHERE
    dd.year = 2023
    AND dd.month_number IN (11, 12)
    AND ds.store_id IN (25, 29)

GROUP BY
    fds.store_id,
    ds.store_name,
    ds.region

ORDER BY fds.store_id ASC;


