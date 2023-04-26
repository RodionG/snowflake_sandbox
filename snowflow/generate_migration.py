import re
import json
import argparse
from datetime import datetime, timedelta

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
    current_date=datetime.now()
    current_timestamp = re.sub(r'\.\d+', '', str(current_date.timestamp()))
    
    migration_name = f"migrations/{current_timestamp}_changes_" \
                     f"{current_date.strftime('%Y-%m-%d')}_" \
                     f"{(current_date - timedelta(days=7)).strftime('%Y-%m-%d')}.sql"
    
    return migration_name

def generate_table_pattern_columns(s3_table_dir_pattern: str, s3_db_dirname_pattern: str, db_name: str = 'systems'):
    pattern_columns = {}
    if s3_db_dirname_pattern:
        pattern_columns[f"'{db_name}_db'"] = f"'{s3_db_dirname_pattern}'"
    if s3_table_dir_pattern and '([0-9]+)' in s3_table_dir_pattern:
        pattern_columns[f"'partition'"] = f"'{s3_table_dir_pattern}'"
    return pattern_columns
    

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
        if migration_config['required_procedure'] == 'create_postgres_table':
            procedure_call_query = get_setup_postgres_dms_table(
                s3_db_dirname=migration_config['s3_db_dirname'],
                s3_schema_dirname=migration_config['s3_schema_dirname'],
                sf_db_name=migration_config['sf_db_name'],
                sf_schema=migration_config['sf_schema'],
                sf_table=migration_config['sf_table_name'],
                id_column=get_columns_for_uid(migration_config['columns']),
                s3_shard_dirname_pattern=format_shard_pattern(migration_config['s3_shard_dirname_pattern']),
                is_partitioned=format_is_partitioned(migration_config['is_partitioned']),
                columns=format_table_columns(migration_config['columns']),
            )
        elif migration_config['required_procedure'] == 'alter_postgres_table':
            procedure_call_query = get_alter_postgres_table_schema(
                s3_db_dirname=migration_config['s3_db_dirname'].lower(),
                sf_db_name=migration_config['sf_db_name'],
                sf_schema=migration_config['sf_schema'].upper(),
                sf_table=migration_config['sf_table_name'],
                id_column=get_columns_for_uid(migration_config['columns']),
                s3_shard_dirname_pattern=format_shard_pattern(migration_config['s3_shard_dirname_pattern']),
                is_partitioned=format_is_partitioned(migration_config['is_partitioned']),
                columns=format_table_columns(migration_config['columns']),
            )
        elif migration_config['required_procedure'] in ('create_clickhouse_table', 'alter_clickhouse_table'):
            procedure_call_query = get_setup_clickhouse_pattern_table(
                s3_db_dirname=migration_config['s3_db_dirname'].lower(),
                sf_table=migration_config['sf_table_name'],
                s3_table_dir_pattern=migration_config['s3_table_dir_pattern'],
                sf_schema=migration_config['sf_schema'].upper(),
                columns=format_table_columns(migration_config['columns']),
                pattern_columns=format_table_columns(
                    generate_table_pattern_columns(
                        migration_config.get('s3_table_dir_pattern'),
                        migration_config.get('s3_db_dirname_pattern')
                    )
                ),
            )
        migration_queries.append(procedure_call_query)

    with open(file=migration_filename, mode='a') as migration_file:
        migration_file.write(
            '\n'.join(migration_queries)
        )


if __name__ == '__main__':
    main()
