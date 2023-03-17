SELECT
    b.name,
    AVG(a.fico) as fico_avg
FROM {{ ref('stg_customer') }} a
LEFT JOIN {{ ref('stg_tpch_nations') }} b
ON a.nation_key = b.nation_key
GROUP BY b.name