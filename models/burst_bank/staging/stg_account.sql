SELECT
*
FROM {{ source('burst_bank', 'account') }}