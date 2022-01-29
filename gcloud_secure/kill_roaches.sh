source ./safe-dir/node_names_and_addys.sh

function kill_roach_node {
gcloud compute ssh --zone "${projectZone}"  \
--project "${projectName}" --command 'pkill -SIGKILL -x cockroach' \
$nodeName
}

nodeName=$node1name
kill_roach_node

nodeName=$node2name
kill_roach_node

nodeName=$node3name
kill_roach_node