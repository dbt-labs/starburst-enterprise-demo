SELECT
*
FROM {{ source('burst_bank', 'auto_loan_payment') }}