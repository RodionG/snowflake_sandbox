call h10_analytics.public.setup_postgres_dms_table(
    '{s3_db_dirname}',
    '{s3_schema_dirname}',
    '{sf_db_name}',
    '{sf_schema}',
    '{sf_table}',
    '{id_column}',
    {s3_shard_dirname_pattern},
    {is_partitioned},
    object_construct({columns}
    )
);
