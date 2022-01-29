source ./safe-dir/node_names_and_addys.sh

# create node-1 cert pair
rm certs/node.*
cockroach cert create-node \
$node1name \
$node1addr \
localhost \
$ex_ip \
--certs-dir=certs \
--ca-key=safe-dir/ca.key

gcloud compute scp ./certs/node.* ${node1name}:~/certs
gcloud compute scp ./certs/ca.crt ${node1name}:~/certs

# create node-2 cert pair 
rm certs/node.*
cockroach cert create-node \
$node2name \
$node2addr \
localhost \
$ex_ip \
$node2addr \
--certs-dir=certs \
--ca-key=safe-dir/ca.key

gcloud compute scp ./certs/node.* ${node2name}:~/certs
gcloud compute scp ./certs/ca.crt ${node2name}:~/certs


# create node-3 cert pair
rm certs/node.*
cockroach cert create-node \
$node3name \
$node3addr \
localhost \
$ex_ip \
--certs-dir=certs \
--ca-key=safe-dir/ca.key

gcloud compute scp ./certs/node.* ${node3name}:~/certs
gcloud compute scp ./certs/ca.crt ${node3name}:~/certs


