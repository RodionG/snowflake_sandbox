call h10_analytics.public.alter_postgres_table_schema(
    '{s3_database_dir}',
    '{sf_database}',
    '{sf_schema}',
    '{sf_table}',
    '{id_column}',
    {shard_pattern},
    {is_partitioned},
    object_construct({columns}
    )
);
