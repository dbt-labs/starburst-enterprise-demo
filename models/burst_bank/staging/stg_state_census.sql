SELECT
*
FROM {{ source('burst_bank', 'state_census') }}