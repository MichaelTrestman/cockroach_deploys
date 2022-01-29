gcloud compute ssh nodeName --command 'sudo curl https://binaries.cockroachdb.com/cockroach-v21.2.4.linux-amd64.tgz \
| tar -xz
sudo cp -i cockroach-v21.2.4.linux-amd64/cockroach /usr/local/bin/
sudo mkdir -p /usr/local/lib/cockroach
sudo cp -i cockroach-v21.2.4.linux-amd64/lib/libgeos.so /usr/local/lib/cockroach/
sudo cp -i cockroach-v21.2.4.linux-amd64/lib/libgeos_c.so /usr/local/lib/cockroach/'