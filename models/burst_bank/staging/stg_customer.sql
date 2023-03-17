SELECT
*
FROM {{ source('burst_bank', 'customer') }}