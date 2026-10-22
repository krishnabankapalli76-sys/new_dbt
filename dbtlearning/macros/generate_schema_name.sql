{% macro generate_schema_name(custom_schema_name, node) -%} 

{%- set default_schema = target.schema -%}

{# If it is a production environment and a custom schema is provided, use ONLY the custom schema #}
{%- if target.name == 'prod' and custom_schema_name is not none -%}
{{ custom_schema_name | trim }}

{# If a custom schema is provided in dev/qa, append it to the default target schema #}
{%- elif custom_schema_name is not none -%}
{{ ~ custom_schema_name | trim }}

{# If no custom schema is provided, fall back to the default target schema #}
{%- else -%}
{{ default_schema }}

{%- endif -%}

{%- endmacro %}