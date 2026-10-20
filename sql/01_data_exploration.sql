/*
select COUNT(*) AS total_stores

from dim_store
*/


-- En fazla mağazanın London olduğunu gösteren analiz

/*
SELECT
    region,
    COUNT(*) AS total_stores
FROM public.dim_store
GROUP BY region
ORDER BY total_stores DESC;
*/
