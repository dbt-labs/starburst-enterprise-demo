{{
    config(
        materialized='incremental',
        unique_key='custkey'
    )
}}

SELECT
   {{ dbt_utils.star(ref('stg_customer')) }}
FROM {{ ref('stg_customer') }}

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where custkey > (select max(custkey) from {{ this }}) 
{% endif %}