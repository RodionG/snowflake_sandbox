call h10_analytics.public.setup_clickhouse_pattern_table(
    '{s3_database_dir}',
    '{sf_table}',
    '{s3_table_dir_pattern}',
    '{sf_schema}',
    object_construct({columns}
    ),
    object_construct({pattern_columns}
    )
);
