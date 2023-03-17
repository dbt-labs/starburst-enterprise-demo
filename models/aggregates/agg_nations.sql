SELECT
    b.name
    AVG(a.fico)
FROM {{ ref('stg_customer') }} a
LEFT JOIN {{ ref('stg_tpch_nations') }} b
GROUP BY b.name