SELECT
*
FROM {{ source('burst_bank', 'mortgage_payment') }}