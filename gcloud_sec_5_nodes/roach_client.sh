source safe-dir/node_names_and_addys.sh
port=26257
cockroach $1 --certs-dir=certs --host=${ex_ip} --port=$port

echo "port is set to $port just fyi"