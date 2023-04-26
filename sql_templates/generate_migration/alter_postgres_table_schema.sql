call h10_analytics.public.alter_postgres_table_schema(
    '{s3_db_dirname}',
    '{sf_db_name}',
    '{sf_schema}',
    '{sf_table}',
    '{id_column}',
    {s3_shard_dirname_pattern},
    {is_partitioned},
    object_construct({columns}
    )
);
