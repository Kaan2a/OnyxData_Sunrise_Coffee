
SELECT COUNT(*) AS total_stores

from dim_store;



-- Analysis showing that London has the highest number of stores

SELECT
    region,
    COUNT(*) AS total_stores
FROM public.dim_store
GROUP BY region
ORDER BY total_stores DESC;
SELECT

    ROUND(AVG(monthly_rent_gbp),2) as avg_monthly_rent,
    MIN(monthly_rent_gbp) as min_monthly_rent,
    MAX(monthly_rent_gbp) as max_monthly_rent,

    ROUND(AVG(staff_headcount)) as avg_staff_headcount,
    MIN(staff_headcount) as min_staff_headcount,
    MAX(staff_headcount) as max_staff_headcount,
    
    ROUND(AVG(monthly_staffing_cost_gbp),2) as avg_monthly_staffing_cost,
    MIN(monthly_staffing_cost_gbp) as min_monthly_staffing_cost,
    MAX(monthly_staffing_cost_gbp) as max_monthly_staffing_cost

FROM public.dim_store;



SELECT
    region, 

    COUNT(*) as total_stores,
    
    ROUND(AVG(monthly_rent_gbp),2) as avg_monthly_rent,
    ROUND(AVG(staff_headcount)) as avg_staff_headcount,
    ROUND(AVG(monthly_staffing_cost_gbp),2) as avg_monthly_staffing_cost

FROM public.dim_store

GROUP BY region
ORDER BY avg_monthly_rent DESC, avg_monthly_staffing_cost DESC, avg_staff_headcount ASC;



SELECT
    region, 

    COUNT(*) as total_stores,
    
    ROUND(AVG(monthly_rent_gbp), 2) as avg_monthly_rent,
    ROUND(AVG(monthly_staffing_cost_gbp), 2) as avg_monthly_staffing_cost,
    ROUND(AVG(monthly_rent_gbp) + AVG(monthly_staffing_cost_gbp), 2) as avg_total_operational_cost

FROM public.dim_store

GROUP BY region
ORDER BY avg_total_operational_cost DESC;


