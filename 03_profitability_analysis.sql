SELECT 
	dim_store.region,
    COUNT(DISTINCT(monthly))
	SUM(fact_store_monthly_profitability.total_monthly_revenue_gbp) as total_monthly_revenue_gbp,
	SUM(fact_store_monthly_profitability.net_profit_gbp) as total_net_profit_gbp,
	ROUND((SUM(fact_store_monthly_profitability.net_profit_gbp) / SUM(fact_store_monthly_profitability.total_monthly_revenue_gbp) * 100), 2) as net_profit_margin


FROM fact_store_monthly_profitability
JOIN dim_store ON fact_store_monthly_profitability.store_id = dim_store.store_id
GROUP BY dim_store.region
ORDER BY net_profit_margin DESC;


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


