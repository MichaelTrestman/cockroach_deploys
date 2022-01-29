source ./safe-dir/node_names_and_addys.sh

echo "" > start_roach.sh
chmod +x ./start_roach.sh

# Node 1
cat <<~~~ > start_roach.sh
cockroach start \
--certs-dir=certs \
--advertise-addr="${node1addr}" \
--join="${node1addr},${node2addr},${node3addr},${node4addr},${node5addr}" \
--cache=.25 \
--max-sql-memory=.25 \
--background
~~~
gcloud compute scp ./start_roach.sh $node1name:~

# Start Node 2
cat <<~~~ > start_roach.sh
cockroach start \
--certs-dir=certs \
--advertise-addr="${node2addr}" \
--join="${node1addr},${node2addr},${node3addr},${node4addr},${node5addr}" \
--cache=.25 \
--max-sql-memory=.25 \
--background
~~~
gcloud compute scp ./start_roach.sh $node2name:~

# Start Node 3
cat <<~~~ > start_roach.sh
cockroach start \
--certs-dir=certs \
--advertise-addr="${node3addr}" \
--join="${node1addr},${node2addr},${node3addr},${node4addr},${node5addr}" \
--cache=.25 \
--max-sql-memory=.25 \
--background
~~~
gcloud compute scp ./start_roach.sh $node3name:~

# Start Node 4
cat <<~~~ > start_roach.sh
cockroach start \
--certs-dir=certs \
--advertise-addr="${node4addr}" \
--join="${node1addr},${node2addr},${node3addr},${node4addr},${node5addr}" \
--cache=.25 \
--max-sql-memory=.25 \
--background
~~~
gcloud compute scp ./start_roach.sh $node4name:~

# Start Node 5
cat <<~~~ > start_roach.sh
cockroach start \
--certs-dir=certs \
--advertise-addr="${node5addr}" \
--join="${node1addr},${node2addr},${node3addr},${node4addr},${node5addr}" \
--cache=.25 \
--max-sql-memory=.25 \
--background
~~~
gcloud compute scp ./start_roach.sh $node5name:~