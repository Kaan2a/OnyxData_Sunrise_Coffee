-- Sunrise Coffee — Gap Closure Queries

-- 1) Store format: revenue, profit, space efficiency and footfall.
SELECT ds.store_format,
       COUNT(DISTINCT ds.store_id) AS store_count,
       ROUND(SUM(fmp.total_monthly_revenue_gbp),2) AS revenue_gbp,
       ROUND(SUM(fmp.net_profit_gbp),2) AS net_profit_gbp,
       ROUND(100 * SUM(fmp.net_profit_gbp) / NULLIF(SUM(fmp.total_monthly_revenue_gbp),0),2) AS weighted_net_margin_pct,
       ROUND(AVG(fmp.revenue_per_sqft_gbp),2) AS avg_monthly_revenue_per_sqft_gbp,
       ROUND(AVG(fmp.avg_daily_footfall),2) AS avg_reported_daily_footfall
FROM public.fact_store_monthly_profitability fmp
JOIN public.dim_store ds ON ds.store_id=fmp.store_id
GROUP BY ds.store_format
ORDER BY weighted_net_margin_pct DESC;

-- 2) Recalculate profitability status according to the thresholds in DATA_DICTIONARY.md.
WITH monthly AS (
 SELECT ds.region, fmp.store_id, fmp.month_id, fmp.profitability_status AS raw_status,
        CASE WHEN fmp.net_profit_margin_pct > 0.20 THEN 'Highly-Profitable'
             WHEN fmp.net_profit_margin_pct >= 0.08 THEN 'Profitable'
             WHEN fmp.net_profit_margin_pct >= -0.02 THEN 'Break-Even'
             WHEN fmp.net_profit_margin_pct >= -0.15 THEN 'Loss-Making'
             ELSE 'Structural-Loss' END AS calculated_status
 FROM public.fact_store_monthly_profitability fmp
 JOIN public.dim_store ds ON ds.store_id=fmp.store_id
)
SELECT region, COUNT(*) AS store_months,
       COUNT(*) FILTER (WHERE raw_status <> calculated_status) AS status_mismatches,
       COUNT(*) FILTER (WHERE calculated_status IN ('Loss-Making','Structural-Loss')) AS classified_risk_months,
       ROUND(100.0 * COUNT(*) FILTER (WHERE calculated_status IN ('Loss-Making','Structural-Loss')) / NULLIF(COUNT(*),0),2) AS classified_risk_share_pct
FROM monthly GROUP BY region ORDER BY classified_risk_share_pct DESC;

-- 3) Largest deterioration/improvement in store net profit between 2023 and 2024.
SELECT ds.region, ds.store_id, ds.store_name,
       ROUND(SUM(fmp.net_profit_gbp) FILTER (WHERE LEFT(fmp.month_id,4)='2023'),2) AS net_profit_2023_gbp,
       ROUND(SUM(fmp.net_profit_gbp) FILTER (WHERE LEFT(fmp.month_id,4)='2024'),2) AS net_profit_2024_gbp,
       ROUND((SUM(fmp.net_profit_gbp) FILTER (WHERE LEFT(fmp.month_id,4)='2024')) -
             (SUM(fmp.net_profit_gbp) FILTER (WHERE LEFT(fmp.month_id,4)='2023')),2) AS yoy_profit_change_gbp
FROM public.fact_store_monthly_profitability fmp
JOIN public.dim_store ds ON ds.store_id=fmp.store_id
GROUP BY ds.region,ds.store_id,ds.store_name
ORDER BY yoy_profit_change_gbp ASC;

-- 4) Product-category revenue split per year and store format, within RECORDED daily observations only.
SELECT dd.year, ds.store_format, COUNT(*) AS observed_records,
       COUNT(DISTINCT (fds.store_id,fds.date_id)) AS observed_store_days,
       ROUND(SUM(fds.total_revenue_gbp),2) AS recorded_revenue_gbp,
       ROUND(100 * SUM(fds.espresso_revenue_gbp) / NULLIF(SUM(fds.total_revenue_gbp),0),2) AS espresso_share_pct,
       ROUND(100 * SUM(fds.filter_revenue_gbp) / NULLIF(SUM(fds.total_revenue_gbp),0),2) AS filter_share_pct,
       ROUND(100 * SUM(fds.food_revenue_gbp) / NULLIF(SUM(fds.total_revenue_gbp),0),2) AS food_share_pct,
       ROUND(100 * SUM(fds.retail_beans_revenue_gbp) / NULLIF(SUM(fds.total_revenue_gbp),0),2) AS retail_beans_share_pct
FROM public.fact_daily_sales fds
JOIN public.dim_date dd ON dd.date_id=fds.date_id
JOIN public.dim_store ds ON ds.store_id=fds.store_id
GROUP BY dd.year,ds.store_format ORDER BY dd.year,ds.store_format;

-- 5) Product catalogue margins by category: UNWEIGHTED listed product margins, NOT realized category profit.
SELECT product_category, COUNT(*) AS catalogue_products,
       ROUND(100 * AVG(gross_margin_pct),2) AS avg_catalogue_gross_margin_pct,
       ROUND(100 * MIN(gross_margin_pct),2) AS min_margin_pct,
       ROUND(100 * MAX(gross_margin_pct),2) AS max_margin_pct
FROM public.dim_product GROUP BY product_category ORDER BY avg_catalogue_gross_margin_pct DESC;

-- 6) Weekday/weekend and bank holiday comparisons (per RECORDED daily row).
SELECT ds.store_format, dd.is_weekend, dd.is_uk_bank_holiday,
       COUNT(*) AS observed_records,
       COUNT(DISTINCT (fds.store_id,fds.date_id)) AS observed_store_days,
       ROUND(AVG(fds.total_revenue_gbp),2) AS avg_revenue_per_record_gbp,
       ROUND(AVG(fds.total_transactions),2) AS avg_transactions_per_record
FROM public.fact_daily_sales fds
JOIN public.dim_date dd ON dd.date_id=fds.date_id
JOIN public.dim_store ds ON ds.store_id=fds.store_id
GROUP BY ds.store_format,dd.is_weekend,dd.is_uk_bank_holiday
ORDER BY ds.store_format,dd.is_weekend,dd.is_uk_bank_holiday;

-- 7) Quarterly financial performance by store format, using complete monthly records.
SELECT dd.year, dd.quarter, ds.store_format, COUNT(DISTINCT fmp.store_id) AS stores,
       ROUND(SUM(fmp.total_monthly_revenue_gbp),2) AS revenue_gbp,
       ROUND(SUM(fmp.net_profit_gbp),2) AS profit_gbp,
       ROUND(100 * SUM(fmp.net_profit_gbp)/NULLIF(SUM(fmp.total_monthly_revenue_gbp),0),2) AS net_margin_pct
FROM public.fact_store_monthly_profitability fmp
JOIN public.dim_date dd ON dd.date_id=fmp.date_id
JOIN public.dim_store ds ON ds.store_id=fmp.store_id
GROUP BY dd.year,dd.quarter,ds.store_format
ORDER BY dd.year,dd.quarter,ds.store_format;
