source ./safe-dir/node_names_and_addys.sh

./provision_keys.sh

gcloud beta compute ssh --zone "${projectZone}" $node1name \
--project "${projectName}" --command 'pkill -SIGHUP -x cockroach'

gcloud beta compute ssh --zone "${projectZone}" $node2name \
--project "${projectName}" --command 'pkill -SIGHUP -x cockroach'

gcloud beta compute ssh --zone "${projectZone}" $node3name \
--project "${projectName}" --command 'pkill -SIGHUP -x cockroach'

gcloud beta compute ssh --zone "${projectZone}" $node4name \
--project "${projectName}" --command 'pkill -SIGHUP -x cockroach'

gcloud beta compute ssh --zone "${projectZone}" $node5name \
--project "${projectName}" --command 'pkill -SIGHUP -x cockroach'