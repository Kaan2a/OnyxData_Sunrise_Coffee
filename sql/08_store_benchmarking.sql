-- ANALYSIS 14: CHAIN-WIDE STORE BENCHMARKING

SELECT
    ds.region,
    ds.store_id,
    ds.store_name,

    COUNT(DISTINCT fmp.month_id) AS months_covered,

    ROUND(
        SUM(fmp.total_monthly_revenue_gbp), 2
    ) AS total_revenue,

    ROUND(
        SUM(fmp.net_profit_gbp), 2
    ) AS total_net_profit,

    ROUND(
        SUM(fmp.net_profit_gbp) /
        NULLIF(SUM(fmp.total_monthly_revenue_gbp), 0) * 100,
        2
    ) AS net_profit_margin_pct,

    ROUND(
        SUM(fmp.monthly_rent_gbp) /
        NULLIF(SUM(fmp.total_monthly_revenue_gbp), 0) * 100,
        2
    ) AS rent_to_revenue_pct,

    ROUND(
        SUM(fmp.monthly_staffing_cost_gbp) /
        NULLIF(SUM(fmp.total_monthly_revenue_gbp), 0) * 100,
        2
    ) AS staffing_to_revenue_pct,

    COUNT(*) FILTER (
        WHERE fmp.net_profit_gbp < 0
    ) AS loss_making_months

FROM public.fact_store_monthly_profitability AS fmp

JOIN public.dim_store AS ds
    ON fmp.store_id = ds.store_id

GROUP BY
    ds.region,
    ds.store_id,
    ds.store_name

ORDER BY net_profit_margin_pct ASC;
