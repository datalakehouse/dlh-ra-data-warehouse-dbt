{{
    fivetran_utils.union_data(
        table_identifier='product_variant', 
        database_variable='shopify_database', 
        schema_variable='shopify_schema', 
        default_database=target.database,
        default_schema='shopify',
        default_variable='product_variant_source'
    )
}}