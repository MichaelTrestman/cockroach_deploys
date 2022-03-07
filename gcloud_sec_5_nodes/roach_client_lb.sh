source safe-dir/node_names_and_addys.sh
port=443
echo "cockroach $1 --insecure --host=${lb_ip} --port=$port"
cockroach $1 --certs-dir=certs --host=${lb_ip} --port=$port

echo "port is set to $port just fyi"