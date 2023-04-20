call h10_analytics.public.setup_postgres_dms_table(
    '{s3_database_dir}',
    '{s3_schema_dir}',
    '{sf_database}',
    '{sf_schema}',
    '{sf_table}',
    '{id_column}',
    {shard_pattern},
    {is_partitioned},
    object_construct({columns}
    )
);
