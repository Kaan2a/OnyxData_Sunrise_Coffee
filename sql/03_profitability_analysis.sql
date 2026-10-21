SELECT 
	dim_store.region,
    COUNT(DISTINCT fact_store_monthly_profitability.month_id) AS month_count,
	SUM(fact_store_monthly_profitability.total_monthly_revenue_gbp) as total_monthly_revenue_gbp,
	SUM(fact_store_monthly_profitability.net_profit_gbp) as total_net_profit_gbp,
	ROUND((SUM(fact_store_monthly_profitability.net_profit_gbp) / SUM(fact_store_monthly_profitability.total_monthly_revenue_gbp) * 100), 2) as net_profit_margin


FROM fact_store_monthly_profitability
JOIN dim_store ON fact_store_monthly_profitability.store_id = dim_store.store_id
GROUP BY dim_store.region
ORDER BY net_profit_margin DESC;


SELECT

    ds.store_id,
    ds.store_name,


    SUM(fmp.total_monthly_revenue_gbp) as total_revenue,
    SUM(fmp.net_profit_gbp) as total_net_profit,
    (SUM(fmp.net_profit_gbp) / SUM(fmp.total_monthly_revenue_gbp)) * 100 AS net_profit_margin,
    COUNT(*) AS monthly_record_count
    
FROM public.fact_store_monthly_profitability AS fmp

JOIN public.dim_store AS ds
    ON fmp.store_id = ds.store_id

WHERE ds.region = 'London'

GROUP BY 
    ds.store_id, 
    ds.store_name

ORDER BY net_profit_margin ASC;



SELECT

    ds.store_id,
    fmp.month_id,
    ds.store_name,
    ROUND(SUM(fmp.total_monthly_revenue_gbp)) AS total_revenue,
    ROUND(SUM(fmp.net_profit_gbp)) AS total_net_profit,
    ROUND(SUM(fmp.net_profit_gbp) / SUM(fmp.total_monthly_revenue_gbp) * 100) AS net_profit_margin


FROM public.fact_store_monthly_profitability AS fmp

JOIN public.dim_store AS ds
    ON fmp.store_id = ds.store_id

WHERE ds.store_id = '32'
GROUP BY fmp.month_id,
         ds.store_name,
         ds.store_id

ORDER BY fmp.month_id ASC;


-- 09 — Yearly Cost Structure Analysis

SELECT 

    ds.store_id,
    ds.store_name,
    
    LEFT(fmp.month_id, 4) AS YEAR,
    ROUND(SUM(fmp.total_monthly_revenue_gbp)) AS total_revenue,
    ROUND(SUM(fmp.monthly_rent_gbp)) AS total_rent,
    ROUND(SUM(fmp.monthly_staffing_cost_gbp)) AS total_staffing_cost,
    ROUND(SUM(fmp.total_monthly_cogs_gbp)) AS total_cogs,
    ROUND((SUM(fmp.total_monthly_revenue_gbp) - SUM(fmp.total_monthly_cogs_gbp)) / SUM(fmp.total_monthly_revenue_gbp) * 100) AS gross_profit_margin

FROM fact_store_monthly_profitability AS fmp

JOIN dim_store AS ds ON fmp.store_id = ds.store_id

WHERE ds.store_id = '32'
GROUP BY LEFT(fmp.month_id, 4),
         ds.store_name,
         ds.store_id

ORDER BY LEFT(fmp.month_id, 4) ASC;

-- 09.2 — Cost-to-Revenue Ratio Analysis

SELECT 

    ds.store_id,
    ds.store_name,
    
    LEFT(fmp.month_id, 4) AS YEAR,
    ROUND(SUM(fmp.total_monthly_revenue_gbp)) AS total_revenue,
    ROUND(SUM(fmp.monthly_rent_gbp)) AS total_rent,
    ROUND(SUM(fmp.monthly_staffing_cost_gbp)) AS total_staffing_cost,
    ROUND(SUM(fmp.total_monthly_cogs_gbp)) AS total_cogs,
    ROUND((SUM(fmp.total_monthly_revenue_gbp) - SUM(fmp.total_monthly_cogs_gbp)) / NULLIF(SUM(fmp.total_monthly_revenue_gbp),0) * 100,2) AS gross_profit_margin,
    ROUND((SUM(fmp.monthly_rent_gbp) / NULLIF(SUM(fmp.total_monthly_revenue_gbp),0) * 100 ),2) AS rent_to_revenue_cost,
    ROUND((SUM(fmp.monthly_staffing_cost_gbp) / NULLIF(SUM(fmp.total_monthly_revenue_gbp),0) * 100),2) AS staffing_to_revenue_cost,
    ROUND((SUM(fmp.total_monthly_cogs_gbp) / NULLIF(SUM(fmp.total_monthly_revenue_gbp),0) * 100),2) AS cogs_to_revenue_cost

FROM fact_store_monthly_profitability AS fmp

JOIN dim_store AS ds ON fmp.store_id = ds.store_id

WHERE ds.store_id = 32
GROUP BY LEFT(fmp.month_id, 4),
         ds.store_name,
         ds.store_id

ORDER BY LEFT(fmp.month_id, 4) ASC;


