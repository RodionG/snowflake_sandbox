from pathlib import Path


def get_sql_query(namespace: str, name: str, params: dict = None) -> str:
    query = Path(
        f"sql_templates/{namespace}/{name}.sql"
    ).read_text()

    if params:
        query = query.format(**params)

    return query
