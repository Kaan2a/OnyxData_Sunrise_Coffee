
SELECT 
    COUNT(*) AS total_stores,
    COUNT(region) AS valid_regions,
    COUNT(*) - COUNT(region) AS missing_regions

FROM public.dim_store;



SELECT 

    COUNT(*) AS total_stores,
    COUNT(*) - COUNT(city) as missing_city,
    COUNT(*) - COUNT(store_format) as missing_format,
    COUNT(*) - COUNT(monthly_rent_gbp) as missing_monthly_rent,
    COUNT(*) - COUNT(staff_headcount) as missing_staff_headcount

FROM public.dim_store;



SELECT

    store_name,
    city,
    COUNT(*) AS duplicate_count

FROM public.dim_store

GROUP BY 
    store_name, city
HAVING 
    COUNT(*) > 1

ORDER BY duplicate_count DESC;



SELECT

    store_name,
    store_id,
    monthly_rent_gbp,
    staff_headcount,
    monthly_staffing_cost_gbp

FROM public.dim_store
WHERE monthly_rent_gbp < 0 OR staff_headcount <= 0 OR monthly_staffing_cost_gbp < 0;




-- Analysis: Product Launch Date Missing Values

SELECT
    COUNT(*) AS total_products,

    COUNT(*) FILTER (WHERE launch_date IS NULL)
        AS missing_launch_date,

    ROUND(
        COUNT(*) FILTER (WHERE launch_date IS NULL)
        * 100.0 / NULLIF(COUNT(*), 0),
        2
    ) AS missing_percentage

FROM public.dim_product;






-- Missing Launch Dates by Product Category

SELECT
    product_category,

    COUNT(*) AS total_products,

    COUNT(*) FILTER (WHERE launch_date IS NULL)
        AS missing_launch_date,

    ROUND(
        COUNT(*) FILTER (WHERE launch_date IS NULL)
        * 100.0 / NULLIF(COUNT(*), 0),
        2
    ) AS missing_percentage

FROM public.dim_product

GROUP BY product_category

ORDER BY missing_percentage DESC;



SELECT 
    COUNT(*) as total_records,
    COUNT(DISTINCT daily_sale_id) as distinct_daily_sale_ids,
    COUNT(*) FILTER(WHERE daily_sale_id IS NULL) as missing_daily_sale_id,
    COUNT(*) FILTER(WHERE store_id IS NULL) as missing_store_id,
    COUNT(*) FILTER(WHERE date_id IS NULL) as missing_date_id,
    COUNT(*) FILTER(WHERE product_id IS NULL) as missing_product_id,
    COUNT(*) FILTER(WHERE total_transactions IS NULL) as missing_total_transactions
FROM fact_daily_sales;

SELECT

    fds.store_id AS fds,
    ds.store_id AS ds

FROM fact_daily_sales AS fds
LEFT JOIN dim_store AS ds
    ON fds.store_id = ds.store_id
WHERE ds.store_id IS NULL;
 



SELECT
    fds.daily_sale_id AS sales_id,
    fds.product_id AS unmatched_product_id

FROM public.fact_daily_sales AS fds

LEFT JOIN public.dim_product AS dp
    ON fds.product_id = dp.product_id

WHERE dp.product_id IS NULL;


SELECT

    fds.daily_sale_id AS sales_id,
    fds.date_id AS unmatched_date_id

FROM fact_daily_sales AS fds
LEFT JOIN dim_date AS dd
    ON fds.date_id = dd.date_id
WHERE dd.date_id IS NULL;



SELECT
    COUNT(*) AS unmatched_product_records

FROM public.fact_daily_sales AS fds

LEFT JOIN public.dim_product AS dp
    ON fds.product_id = dp.product_id

WHERE dp.product_id IS NULL;




SELECT 
    MIN(dim_date.full_date) as first_date,
    MAX(dim_date.full_date) as last_date

FROM dim_date;


SELECT
    COUNT(*) FILTER (
        
        WHERE dim_date.full_date IS NULL) AS missing_dates,
    COUNT(*) AS total_dates,
    COUNT(DISTINCT full_date) AS distinct_dates

FROM dim_date;



SELECT *
FROM public.dim_date
LIMIT 5;

