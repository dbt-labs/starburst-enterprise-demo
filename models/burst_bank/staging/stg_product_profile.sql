SELECT
*
FROM {{ source('burst_bank', 'product_profile') }}