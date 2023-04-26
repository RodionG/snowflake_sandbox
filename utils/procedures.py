from utils.sql_queries import get_sql_query


def get_setup_postgres_dms_table(**kwargs) -> str:
    procedure_call_query = get_sql_query(
        namespace='generate_migration',
        name='setup_postgres_dms_table',
        params={
            's3_db_dirname': kwargs['s3_db_dirname'],
            's3_schema_dirname': kwargs['s3_schema_dirname'],
            'sf_db_name': kwargs['sf_db_name'],
            'sf_schema': kwargs['sf_schema'],
            'sf_table': kwargs['sf_table'],
            'id_column': kwargs['id_column'],
            's3_shard_dirname_pattern': kwargs['s3_shard_dirname_pattern'],
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
            's3_db_dirname': kwargs['s3_db_dirname'],
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
            's3_db_dirname': kwargs['s3_db_dirname'],
            'sf_db_name': kwargs['sf_db_name'],
            'sf_schema': kwargs['sf_schema'],
            'sf_table': kwargs['sf_table'],
            'id_column': kwargs['id_column'],
            's3_shard_dirname_pattern': kwargs['s3_shard_dirname_pattern'],
            'is_partitioned': kwargs['is_partitioned'],
            'columns': kwargs['columns'],
        }
    )
    
    return procedure_call_query
