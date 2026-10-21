-- Analysis 11 — Product Performance & Sales Mix Analysis


SELECT *
FROM public.fact_daily_sales       
LIMIT 5;

SELECT *
FROM public.dim_product
LIMIT 5;
 
SELECT
    daily_sale_id,
    product_id,
    total_revenue_gbp,

    ROUND(
        COALESCE(espresso_revenue_gbp, 0) +
        COALESCE(filter_revenue_gbp, 0) +
        COALESCE(food_revenue_gbp, 0) +
        COALESCE(retail_beans_revenue_gbp, 0),
        2
    ) AS category_revenue_sum

FROM public.fact_daily_sales

LIMIT 10;




SELECT
    COUNT(*) AS total_records,

    COUNT(*) FILTER (
        WHERE total_revenue_gbp IS NULL
           OR ABS(
               total_revenue_gbp -
               (
                   COALESCE(espresso_revenue_gbp, 0) +
                   COALESCE(filter_revenue_gbp, 0) +
                   COALESCE(food_revenue_gbp, 0) +
                   COALESCE(retail_beans_revenue_gbp, 0)
               )
           ) > 0.01
    ) AS mismatch_count

FROM public.fact_daily_sales;


-- Analysis 11.2 — Yearly Category Revenue Analysis


SELECT
    dd.year,

    ROUND(SUM(fds.espresso_revenue_gbp), 2)
        AS espresso_revenue,

    ROUND(SUM(fds.filter_revenue_gbp), 2)
        AS filter_revenue,

    ROUND(SUM(fds.food_revenue_gbp), 2)
        AS food_revenue,

    ROUND(SUM(fds.retail_beans_revenue_gbp), 2)
        AS retail_beans_revenue,

    ROUND(SUM(fds.total_revenue_gbp), 2)
        AS total_revenue,

    COUNT(*) AS record_count,
    COUNT(DISTINCT fds.date_id) AS distinct_dates

FROM public.fact_daily_sales AS fds

JOIN public.dim_date AS dd
    ON fds.date_id = dd.date_id

GROUP BY dd.year

ORDER BY dd.year ASC;

