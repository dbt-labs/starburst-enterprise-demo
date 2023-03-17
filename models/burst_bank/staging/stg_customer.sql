SELECT
    a.custkey,
    a.fico,
    b.nationkey as nation_key
FROM {{ source('burst_bank', 'customer') }} a
LEFT JOIN {{ ref('map_nation') }} b
    ON a.country = b.nationabbv