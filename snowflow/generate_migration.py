import re
import json
import argparse
from datetime import datetime

from utils.procedures import (
    get_setup_postgres_dms_table,
    get_alter_postgres_table_schema,
    get_setup_clickhouse_pattern_table
)

parser = argparse.ArgumentParser()

parser.add_argument(
    '--config',
    help='',
    required=False
)

args = parser.parse_args()


def generate_migration_filename() -> str:
    current_timestamp = re.sub(r'\.\d+', '', str(datetime.now().timestamp()))
    
    migration_name = f"migrations/{current_timestamp}_migration.sql"
    
    return migration_name


def format_table_columns(columns: dict) -> str:
    if columns:
        formatted_columns = '\n' + ',\n'.join([
            f"{' ' * 8}{col_name}, {col_type}" 
            for col_name, col_type in columns.items()
        ])

        return formatted_columns
    else:
        return ''


def get_columns_for_uid(columns: dict) -> str:
    if 'id' in columns.keys():
        return 'id'
    else:
        return ','.join(columns.keys())


def format_shard_pattern(shard_pattern: str) -> str:
    if shard_pattern:
        return f"'{shard_pattern}'"
    else:
        return "null"
    
def format_is_partitioned(is_partitioned: str) -> str:
    if is_partitioned:
        return 'true'
    else:
        return 'false'


def main():
    migration_filename = generate_migration_filename()
    migration_queries = []
    migrations_configs = json.loads(args.config)

    for migration_config in migrations_configs:
        if migration_config['required_procedure'] == 'setup_postgres_dms_table':
            procedure_call_query = get_setup_postgres_dms_table(
                s3_database_dir=migration_config['s3_database_dir'].lower(),
                s3_schema_dir=migration_config['s3_schema_dir'].lower(),
                sf_database=migration_config['sf_database'].upper(),
                sf_schema=migration_config['sf_schema'].upper(),
                sf_table=migration_config['sf_table'],
                id_column=get_columns_for_uid(migration_config['columns']),
                shard_pattern=format_shard_pattern(migration_config['shard_pattern']),
                is_partitioned=format_is_partitioned(migration_config['is_partitioned']),
                columns=format_table_columns(migration_config['columns']),
            )
        elif migration_config['required_procedure'] == 'alter_postgres_table_schema':
            procedure_call_query = get_alter_postgres_table_schema(
                s3_database_dir=migration_config['s3_database_dir'].lower(),
                sf_database=migration_config['sf_database'].upper(),
                sf_schema=migration_config['sf_schema'].upper(),
                sf_table=migration_config['sf_table'],
                id_column=get_columns_for_uid(migration_config['columns']),
                shard_pattern=format_shard_pattern(migration_config['shard_pattern']),
                is_partitioned=format_is_partitioned(migration_config['is_partitioned']),
                columns=format_table_columns(migration_config['columns']),
            )
        elif migration_config['required_procedure'] == 'setup_clickhouse_pattern_table':
            procedure_call_query = get_setup_clickhouse_pattern_table(
                s3_database_dir=migration_config['s3_database_dir'].lower(),
                sf_table=migration_config['sf_table'].upper(),
                s3_table_dir_pattern=migration_config['s3_table_dir_pattern'],
                sf_schema=migration_config['sf_schema'].upper(),
                columns=format_table_columns(migration_config['columns']),
                pattern_columns=format_table_columns(migration_config['pattern_columns']),
            )
        migration_queries.append(procedure_call_query)

    with open(file=migration_filename, mode='a') as migration_file:
        migration_file.write(
            '\n'.join(migration_queries)
        )


if __name__ == '__main__':
    main()
