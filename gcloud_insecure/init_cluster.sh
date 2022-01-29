# back on the home machine

cockroach init --insecure --host=10.128.0.3 


# this didn't work!!!


oot@roach-node-2:/home/michaeltrestman# cockroach init
warning: node not ready to perform cluster initialization: operation "init-open-conn" timed out after 5s: context deadline exceeded (retrying)



Then when I tried it from the box WITHOUT the insecure flag, I got something similar...

warning: node not ready to perform cluster initialization: problem using security settings: no certificates found; does certs dir exist? (retrying)
warning: node not ready to perform cluster initialization: problem using security settings: no certificates found; does certs dir exist? (retrying)
warning: node not ready to perform cluster initialization: problem using security settings: no certificates found; does certs dir exist? (retrying)
warning: node not ready to perform cluster initialization: problem using security settings: no certificates found; does certs dir exist? (retrying)
warning: node not ready to perf



But then it worked with the insecure flag

root@roach-node-2:/home/michaeltrestman# cockroach init --insecure
Cluster successfully initialized


And I can get into SQL console are do stuff on one node and it propagates to the others, yay! or actually it propoagted to one and then NOT the other one... Kind of weird.

Got this error on the other node: root@:26257/defaultdb> select * from person;
ERROR: no inbound stream connection

Why would that be? I set them up the same...


Then I'll try and run sql against the cluster... but ok, how do I set the host IP? I need to set a static IP for one of the nodes (or more properly a LB as described in teh docs, but for now just a public IP on a node I think.)



OK, followed the instructs here to create a static IP and config the VM to use it...
https://cloud.google.com/compute/docs/ip-addresses/reserve-static-external-ip-address



gcloud compute instances add-access-config roach-node-2 \
   --access-config-name="roach-point-station" --address=34.102.175.205




ok, here's the static IP: 35.232.16.132

cockroach sql \
--insecure --url "postgresql://35.232.16.132:26257/defaultdb"

#
# Welcome to the CockroachDB SQL shell.
# All statements must be terminated by a semicolon.
# To exit, type: \q.
#
ERROR: cannot dial server.
Is the server running?
If the server is running, check --host client-side and --advertise server-side.

dial tcp 35.232.16.132:26257: i/o timeout
Failed running "sql"


