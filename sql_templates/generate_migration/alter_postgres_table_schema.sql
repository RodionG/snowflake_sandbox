call h10_analytics.public.alter_postgres_table_schema(
    '{s3_db_dir}',
    '{sf_database}',
    '{sf_schema}',
    '{sf_table}',
    '{id_column}',
    {s3_shard_dir_pattern},
    {is_partitioned},
    object_construct({columns}
    )
);
