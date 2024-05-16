DB_URL = postgresql://sqladmin:password@127.0.0.1/temp?sslmode=disable
MIGRATION_NAME = Hello	

migrateup:
	migrate -database "${DB_URL}" -path db/migrations -verbose up

migratedown:
	migrate -database "${DB_URL}" -path db/migrations -verbose down

createmigration:
	@read -p "Enter migration name: " name; \
    echo "Creating migration $$name"; \
	migrate create -ext sql -dir db/migrations -seq $$name

.PHONY: migrateup migratedown createmigration