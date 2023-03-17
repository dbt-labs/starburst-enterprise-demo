{% macro generate_schema_name(custom_schema_name, node) -%}

    {{ var('schema_with_write_permission') }}

{%- endmacro %}