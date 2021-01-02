# sql_recipe
repo based on book "ビッグデータ分析・活用のためのSQLレシピ" https://book.mynavi.jp/ec/products/detail/id=65863

## Directories
.
├── README.md
├── Dockerfile
├── docker-compose.yml
├── pg_data
└── script
    ├── initdb
    │   ├── ch03.sql
    │   ├── ch04.sql
    │   ├── ch05.sql
    │   ├── ch06.sql
    │   ├── ch07.sql
    │   ├── ch08.sql
    │   ├── create_db.sh
    │   └── make_initdbs.sh
    └── query
        ├── ch03
        ├── ch04
        ├── ch05
        ├── ch06
        ├── ch07
        └── ch08

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

- To execute a SQL file 'home/script/query/ch03/query_03_01_00.sql'

```bash
psql -U postgres -d ch03 -f home/script/query/ch03/query_03_01_00.sql
```

- To execute an SQL query 'home/script/query/ch03/query_03_01_00.sql'

```bash
psql -U postgres -d ch03 -c 'SELECT * FROM mst_users;'
```