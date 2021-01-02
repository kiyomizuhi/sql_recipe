# create user
createuser -U postgres recipe

# create database for chapter 03
createdb -U postgres -O recipe -E UTF8 -T template0 ch03
# populate tables for database ch03
psql -U postgres -d ch03 -f ch03.sql

# create database for chapter 04
createdb -U postgres -O recipe -E UTF8 -T template0 ch04
# populate tables for database ch04
psql -U postgres -d ch04 -f ch04.sql

# create database for chapter 05
createdb -U postgres -O recipe -E UTF8 -T template0 ch05
# populate tables for database ch05
psql -U postgres -d ch05 -f ch05.sql

# create database for chapter 06
createdb -U postgres -O recipe -E UTF8 -T template0 ch06
# populate tables for database ch06
psql -U postgres -d ch06 -f ch06.sql

# create database for chapter 07
createdb -U postgres -O recipe -E UTF8 -T template0 ch07
# populate tables for database ch07
psql -U postgres -d ch07 -f ch07.sql

# create database for chapter 08
createdb -U postgres -O recipe -E UTF8 -T template0 ch08
# populate tables for database ch08
psql -U postgres -d ch08 -f ch08.sql