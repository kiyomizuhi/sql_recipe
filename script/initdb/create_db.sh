# create user
createuser -U postgres recipe

# create and populate tables ch03
createdb -U postgres -O recipe -E UTF8 -T template0 ch03
psql -U postgres -d ch03 -f ch03.sql

# create and populate tables ch04
createdb -U postgres -O recipe -E UTF8 -T template0 ch04
psql -U postgres -d ch04 -f ch04.sql

# create and populate tables ch05
createdb -U postgres -O recipe -E UTF8 -T template0 ch05
psql -U postgres -d ch05 -f ch05.sql

# create and populate tables ch06
createdb -U postgres -O recipe -E UTF8 -T template0 ch06
psql -U postgres -d ch06 -f ch06.sql

# create and populate tables ch07
createdb -U postgres -O recipe -E UTF8 -T template0 ch07
psql -U postgres -d ch07 -f ch07.sql

# create and populate tables ch08
createdb -U postgres -O recipe -E UTF8 -T template0 ch08
psql -U postgres -d ch08 -f ch08.sql