source ./safe-dir/node_names_and_addys.sh
./provision_keys.sh
./generate_and_propagate_start_scripts.sh

gcloud beta compute ssh --zone "us-central1-a" $node1name \
--project "noobtest123" --command 'chmod +x start_roach.sh && ./start_roach.sh' & 

gcloud beta compute ssh --zone "us-central1-a" $node2name \
--project "noobtest123" --command 'chmod +x start_roach.sh && ./start_roach.sh' & 

gcloud beta compute ssh --zone "us-central1-a" $node3name \
--project "noobtest123" --command 'chmod +x start_roach.sh && ./start_roach.sh' &