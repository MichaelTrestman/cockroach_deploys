for i in {1..100}; do
cockroach sql --url "postgresql://michael:123@free-tier14.aws-us-east-1.cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full&options=--cluster%3Dbigear-wren-451&sslrootcert=root.crt"
sleep 1
done


