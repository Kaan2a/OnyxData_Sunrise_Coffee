-- ANALYSIS 13 — MULTIPLE LINEAR REGRESSION DATA PREPARATION
-- Data grain: one store per month (60 stores x 24 months)
-- Outcome: monthly revenue (GBP)
-- Explanatory variables: monthly footfall, rent, staffing cost,
-- loyalty adoption rate (from store dimension)

SELECT
    fmp.store_id,
    ds.store_name,
    fmp.month_id,
    LEFT(fmp.month_id, 4)::INTEGER AS year,
    fmp.total_monthly_revenue_gbp,
    fmp.avg_daily_footfall,
    fmp.monthly_rent_gbp,
    fmp.monthly_staffing_cost_gbp,
    ds.loyalty_adoption_rate
FROM public.fact_store_monthly_profitability AS fmp
JOIN public.dim_store AS ds
    ON fmp.store_id = ds.store_id
WHERE fmp.month_id >= '2023-01'
  AND fmp.month_id <= '2024-12'
ORDER BY fmp.store_id, fmp.month_id;
