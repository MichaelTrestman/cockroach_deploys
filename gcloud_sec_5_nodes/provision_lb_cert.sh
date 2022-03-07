source ./safe-dir/node_names_and_addys.sh

# create node-1 cert pair
rm certs/node.*
cockroach cert create-node \
lb_ip \
$node1name \
$node1addr \
$node2name \
$node2addr \
$node3name \
$node3addr \
$node4name \
$node4addr \
$node5name \
$node5addr \
--certs-dir=certs \
--ca-key=safe-dir/ca.key
