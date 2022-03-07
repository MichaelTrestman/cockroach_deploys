source ./safe-dir/node_names_and_addys.sh
./provision_keys.sh
./generate_and_propagate_start_scripts.sh


function install_roach_on_node {

	gcloud compute ssh $1 --command 'if [[ ! -e cockroach-v21.2.4.linux-amd64 ]];
	then
		echo "roach not installed"
		sudo curl https://binaries.cockroachdb.com/cockroach-v21.2.4.linux-amd64.tgz | tar -xz
		sudo cp -i cockroach-v21.2.4.linux-amd64/cockroach /usr/local/bin/
		sudo mkdir -p /usr/local/lib/cockroach
		sudo cp -i cockroach-v21.2.4.linux-amd64/lib/libgeos.so /usr/local/lib/cockroach/
		sudo cp -i cockroach-v21.2.4.linux-amd64/lib/libgeos_c.so /usr/local/lib/cockroach/
	else
		echo "roach already installed"
	fi

'
}

function start_roach_node {
	gcloud beta compute ssh --zone "${projectZone}" \
	--project "${projectName}" --command 'chmod +x start_roach.sh && ./start_roach.sh' \
	$1
}

install_roach_on_node $node1name
start_roach_node $node1name &

install_roach_on_node $node2name
start_roach_node $node2name &


install_roach_on_node $node3name
start_roach_node $node3name &

install_roach_on_node $node4name
start_roach_node $node4name &

install_roach_on_node $node5name
start_roach_node $node5name &