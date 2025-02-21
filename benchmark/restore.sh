# データベース名
DB_NAME = app
MYSQL_PASSWORD=root
DB_CONTAINER_NAME=vol_mysql


docker exec -i $(DB_CONTAINER_NAME) mysql -uroot -p$(MYSQL_PASSWORD) $(DB_NAME) < benchmark/test_users/uuid_method/users1200.dump