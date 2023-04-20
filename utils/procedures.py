from utils.sql_queries import get_sql_query


def get_setup_postgres_dms_table(**kwargs) -> str:
    procedure_call_query = get_sql_query(
        namespace='generate_migration',
        name='setup_postgres_dms_table',
        params={
            's3_database_dir': kwargs['s3_database_dir'],
            's3_schema_dir': kwargs['s3_schema_dir'],
            'sf_database': kwargs['sf_database'],
            'sf_schema': kwargs['sf_schema'],
            'sf_table': kwargs['sf_table'],
            'id_column': kwargs['id_column'],
            'shard_pattern': kwargs['shard_pattern'],
            'is_partitioned': kwargs['is_partitioned'],
            'columns': kwargs['columns'],
        }
    )
    
    return procedure_call_query


def get_setup_clickhouse_pattern_table(**kwargs) -> str:
    procedure_call_query = get_sql_query(
        namespace='generate_migration',
        name='setup_clickhouse_pattern_table',
        params={
            's3_database_dir': kwargs['s3_database_dir'],
            'sf_table': kwargs['sf_table'],
            's3_table_dir_pattern': kwargs['s3_table_dir_pattern'],
            'sf_schema': kwargs['sf_schema'],
            'columns': kwargs['columns'],
            'pattern_columns': kwargs['pattern_columns'],
        }
    )
    
    return procedure_call_query

def get_alter_postgres_table_schema(**kwargs) -> str:
    procedure_call_query = get_sql_query(
        namespace='generate_migration',
        name='alter_postgres_table_schema',
        params={
            's3_database_dir': kwargs['s3_database_dir'],
            'sf_database': kwargs['sf_database'],
            'sf_schema': kwargs['sf_schema'],
            'sf_table': kwargs['sf_table'],
            'id_column': kwargs['id_column'],
            'shard_pattern': kwargs['shard_pattern'],
            'is_partitioned': kwargs['is_partitioned'],
            'columns': kwargs['columns'],
        }
    )
    
    return procedure_call_query
