source ./safe-dir/node_names_and_addys.sh

# create node-1 cert pair
rm certs/node.*
cockroach cert create-node \
$node1name \
$node1addr \
localhost \
$lb_ip \
$ex_ip \
--certs-dir=certs \
--ca-key=safe-dir/ca.key

gcloud compute ssh --zone "${projectZone}"  \
--project "${projectName}" \
--command 'mkdir ~/certs' \
$node1name

gcloud compute scp ./certs/node.* ${node1name}:~/certs
gcloud compute scp ./certs/ca.crt ${node1name}:~/certs

# create node-2 cert pair 
rm certs/node.*
cockroach cert create-node \
$node2name \
$node2addr \
localhost \
$lb_ip \
$ex_ip \
$node2addr \
--certs-dir=certs \
--ca-key=safe-dir/ca.key


gcloud compute ssh --zone "${projectZone}"  \
--project "${projectName}" \
--command 'mkdir ~/certs' \
$node2name

gcloud compute scp ./certs/node.* ${node2name}:~/certs
gcloud compute scp ./certs/ca.crt ${node2name}:~/certs


# create node-3 cert pair
rm certs/node.*
cockroach cert create-node \
$node3name \
$node3addr \
localhost \
$lb_ip \
$ex_ip \
--certs-dir=certs \
--ca-key=safe-dir/ca.key

gcloud compute ssh --zone "${projectZone}"  \
--project "${projectName}" \
--command 'mkdir ~/certs' \
$node3name

gcloud compute scp ./certs/node.* ${node3name}:~/certs
gcloud compute scp ./certs/ca.crt ${node3name}:~/certs

# create node-4 cert pair
rm certs/node.*
cockroach cert create-node \
$node4name \
$node4addr \
localhost \
$lb_ip \
$ex_ip \
--certs-dir=certs \
--ca-key=safe-dir/ca.key

gcloud compute ssh --zone "${projectZone}"  \
--project "${projectName}" \
--command 'mkdir ~/certs' \
$node4name

gcloud compute scp ./certs/node.* ${node4name}:~/certs
gcloud compute scp ./certs/ca.crt ${node4name}:~/certs

# create node-5 cert pair
rm certs/node.*
cockroach cert create-node \
$node5name \
$node5addr \
localhost \
$lb_ip \
$ex_ip \
--certs-dir=certs \
--ca-key=safe-dir/ca.key

gcloud compute ssh --zone "${projectZone}"  \
--project "${projectName}" \
--command 'mkdir ~/certs' \
$node5name

gcloud compute scp ./certs/node.* ${node5name}:~/certs
gcloud compute scp ./certs/ca.crt ${node5name}:~/certs

