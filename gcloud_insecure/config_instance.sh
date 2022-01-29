# checked chronyc config, looked good (already set to google source)

# node iP addresses:

# roach1: 10.128.0.3 
# roach2: 10.128.0.7
# roach3: 10.128.0.8 


curl https://binaries.cockroachdb.com/cockroach-v21.2.4.linux-amd64.tgz | tar -xz


sudo -i

cd /home/michaeltrestman
cp -i cockroach-v21.2.4.linux-amd64/cockroach /usr/local/bin/
mkdir -p /usr/local/lib/cockroach
cp -i cockroach-v21.2.4.linux-amd64/lib/libgeos.so /usr/local/lib/cockroach/
cp -i cockroach-v21.2.4.linux-amd64/lib/libgeos_c.so /usr/local/lib/cockroach/






# to run on node 1

cockroach start \
  --insecure \
  --advertise-addr=10.128.0.3 \
  --join=10.128.0.3,10.128.0.7,10.128.0.8 \
  --cache=.25 \
  --max-sql-memory=.25 \
  --background

# to run on node 2

cockroach start \
  --insecure \
  --advertise-addr=10.128.0.7 \
  --join=10.128.0.3,10.128.0.7,10.128.0.8 \
  --cache=.25 \
  --max-sql-memory=.25 \
  --background

# to run on node 3

cockroach start \
  --insecure \
  --advertise-addr=10.128.0.8 \
  --join=10.128.0.3,10.128.0.7,10.128.0.8 \
  --cache=.25 \
  --max-sql-memory=.25 \
  --background