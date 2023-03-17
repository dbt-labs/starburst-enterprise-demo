SELECT
*
FROM {{ source('burst_bank', 'credit_card_payment') }}