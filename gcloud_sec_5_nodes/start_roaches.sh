source ./safe-dir/node_names_and_addys.sh
./provision_keys.sh
./generate_and_propagate_start_scripts.sh

function start_roach_node {
gcloud beta compute ssh --zone "${projectZone}" \
--project "${projectName}" --command 'chmod +x start_roach.sh && ./start_roach.sh' \
$nodeName & 
}

nodeName=$node1name
start_roach_node

nodeName=$node2name
start_roach_node

nodeName=$node3name
start_roach_node

nodeName=$node4name
start_roach_node

nodeName=$node5name
start_roach_node