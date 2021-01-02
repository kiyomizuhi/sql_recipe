# sql_recipe
repo based on book "ビッグデータ分析・活用のためのSQLレシピ" https://book.mynavi.jp/ec/products/detail/id=65863

Here, we employ postgres on docker.

## Directories

    .
    ├── README.md
    ├── Dockerfile
    ├── docker-compose.yml
    ├── pg_data
    └── script
        ├── initdb
        ├── ch03_01
        ├── ch03_02
        ├── ch03_03
        ├── ch03_04
        └── ch04_01

## Installation

- build and run a container (named recipe_db)

```bash
docker-compose up -d
```

- enter tne recipe_db container

```bash
docker exec -it recipe_db bash
```

- create user, databases, tables for all the chapters

```bash
bash create_db.sh
```

## Usage

- To execute an SQL file 'home/script/ch03_01/query_01.sql'

```bash
psql -U postgres -d ch03_01 -f home/script/ch03_01/query_01.sql
```

- To execute an SQL query 'SELECT * FROM mst_users;'

```bash
psql -U postgres -d ch03_01 -c 'SELECT * FROM mst_users;'
```
