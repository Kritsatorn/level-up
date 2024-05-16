# level-up
This project will conquer the fear in my heart and will transform me into a new person.
export POSTGRESQL_URL='postgresql://sqladmin:password@127.0.0.1/temp?sslmode=disable'
migrate -database ${POSTGRESQL_URL} -path db/migrations up