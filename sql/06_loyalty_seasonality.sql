-- ANALYSIS 12.1: LOYALTY PERFORMANCE BY STORE

SELECT
    ds.store_id,
    ds.store_name,
    ds.region,
    ds.store_format,

    ROUND(ds.loyalty_adoption_rate * 100, 2)
        AS loyalty_adoption_pct,

    ROUND(
        SUM(
            fmp.loyalty_member_revenue_pct *
            fmp.total_monthly_revenue_gbp
        ) /
        NULLIF(
            SUM(fmp.total_monthly_revenue_gbp)
                FILTER (
                    WHERE fmp.loyalty_member_revenue_pct IS NOT NULL
                ),
            0
        ) * 100,
        2
    ) AS loyalty_member_revenue_pct,

    ROUND(SUM(fmp.loyalty_member_spend_gbp), 2)
        AS total_loyalty_revenue,

    ROUND(SUM(fmp.loyalty_redemption_cost_gbp), 2)
        AS total_loyalty_cost,

    ROUND(SUM(fmp.total_monthly_revenue_gbp), 2)
        AS total_revenue,

    COUNT(*) FILTER (
        WHERE fmp.loyalty_member_revenue_pct IS NULL
    ) AS missing_loyalty_months

FROM public.fact_store_monthly_profitability AS fmp

JOIN public.dim_store AS ds
    ON fmp.store_id = ds.store_id

GROUP BY
    ds.store_id,
    ds.store_name,
    ds.region,
    ds.store_format,
    ds.loyalty_adoption_rate

ORDER BY loyalty_adoption_pct DESC;


-- 12.2 — Loyalty Cost Analysis

SELECT
    LEFT(fmp.month_id, 4) AS year,
    ds.store_format,

    COUNT(DISTINCT ds.store_id) AS store_count,

    ROUND(SUM(fmp.total_monthly_revenue_gbp), 2)
        AS total_revenue_gbp,

    ROUND(SUM(fmp.loyalty_member_spend_gbp), 2)
        AS loyalty_member_revenue_gbp,

    ROUND(SUM(fmp.loyalty_redemption_cost_gbp), 2)
        AS loyalty_redemption_cost_gbp,

    ROUND(
        SUM(fmp.loyalty_member_spend_gbp) /
        NULLIF(SUM(fmp.total_monthly_revenue_gbp), 0) * 100,
        2
    ) AS member_revenue_share_pct,

    ROUND(
        SUM(fmp.loyalty_redemption_cost_gbp) /
        NULLIF(SUM(fmp.loyalty_member_spend_gbp), 0) * 100,
        2
    ) AS redemption_cost_to_member_spend_pct,

    ROUND(
        SUM(fmp.net_profit_gbp) /
        NULLIF(SUM(fmp.total_monthly_revenue_gbp), 0) * 100,
        2
    ) AS net_profit_margin_pct

FROM public.fact_store_monthly_profitability AS fmp

JOIN public.dim_store AS ds
    ON fmp.store_id = ds.store_id

GROUP BY
    LEFT(fmp.month_id, 4),
    ds.store_format

ORDER BY year, member_revenue_share_pct DESC;



-- ANALYSIS 12.3: MONTHLY SEASONALITY

SELECT
    fmp.month_id,

    COUNT(DISTINCT fmp.store_id) AS store_count,

    ROUND(SUM(fmp.total_monthly_revenue_gbp), 2)
        AS total_revenue_gbp,

    ROUND(SUM(fmp.net_profit_gbp), 2)
        AS total_net_profit_gbp,

    ROUND(
        SUM(fmp.net_profit_gbp) /
        NULLIF(SUM(fmp.total_monthly_revenue_gbp), 0) * 100,
        2
    ) AS net_profit_margin_pct

FROM public.fact_store_monthly_profitability AS fmp

GROUP BY fmp.month_id

ORDER BY fmp.month_id ASC;



-- ANALYSIS 12.4: LOYALTY CORRELATION

WITH store_performance AS (

    SELECT
        ds.store_id,

        ds.loyalty_adoption_rate::DOUBLE PRECISION
            AS adoption_rate,

        (
            SUM(fmp.loyalty_member_spend_gbp) /
            NULLIF(SUM(fmp.total_monthly_revenue_gbp), 0)
        )::DOUBLE PRECISION
            AS loyalty_revenue_share,

        (
            SUM(fmp.net_profit_gbp) /
            NULLIF(SUM(fmp.total_monthly_revenue_gbp), 0)
        )::DOUBLE PRECISION
            AS net_profit_margin

    FROM public.dim_store AS ds

    JOIN public.fact_store_monthly_profitability AS fmp
        ON ds.store_id = fmp.store_id

    GROUP BY
        ds.store_id,
        ds.loyalty_adoption_rate
)

SELECT
    COUNT(*) AS store_count,

    ROUND(
        CORR(adoption_rate, loyalty_revenue_share)::NUMERIC,
        3
    ) AS adoption_vs_revenue_share_corr,

    ROUND(
        CORR(adoption_rate, net_profit_margin)::NUMERIC,
        3
    ) AS adoption_vs_profit_margin_corr,

    ROUND(
        CORR(loyalty_revenue_share, net_profit_margin)::NUMERIC,
        3
    ) AS revenue_share_vs_profit_margin_corr

FROM store_performance;
