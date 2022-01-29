gcloud compute instances create roach-node-1 \
	--project=noobtest123 \
	--zone=us-central1-a \
	--machine-type=n2-standard-2 \
	--network-interface=network-tier=PREMIUM,subnet=default \
	--maintenance-policy=MIGRATE \
	--service-account=35961569477-compute@developer.gserviceaccount.com \
	--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
	--tags=http-server,https-server \
	--create-disk=auto-delete=yes,boot=yes,device-name=roach-node-1,image=projects/debian-cloud/global/images/debian-10-buster-v20220118,mode=rw,size=150,type=projects/noobtest123/zones/us-central1-a/diskTypes/pd-ssd \
	--no-shielded-secure-boot \
	--shielded-vtpm \
	--shielded-integrity-monitoring \
	--reservation-affinity=any

gcloud compute instances create roach-node-2 \
	--project=noobtest123 \
	--zone=us-central1-a \
	--machine-type=n2-standard-2 \
	--network-interface=network-tier=PREMIUM,subnet=default \
	--maintenance-policy=MIGRATE \
	--service-account=35961569477-compute@developer.gserviceaccount.com \
	--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
	--tags=http-server,https-server \
	--create-disk=auto-delete=yes,boot=yes,device-name=roach-node-2,image=projects/debian-cloud/global/images/debian-10-buster-v20220118,mode=rw,size=150,type=projects/noobtest123/zones/us-central1-a/diskTypes/pd-ssd \
	--no-shielded-secure-boot \
	--shielded-vtpm \
	--shielded-integrity-monitoring \
	--reservation-affinity=any

gcloud compute instances create roach-node-3 \
	--project=noobtest123 \
	--zone=us-central1-a \
	--machine-type=n2-standard-2 \
	--network-interface=network-tier=PREMIUM,subnet=default \
	--maintenance-policy=MIGRATE \
	--service-account=35961569477-compute@developer.gserviceaccount.com \
	--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
	--tags=http-server,https-server \
	--create-disk=auto-delete=yes,boot=yes,device-name=roach-node-3,image=projects/debian-cloud/global/images/debian-10-buster-v20220118,mode=rw,size=150,type=projects/noobtest123/zones/us-central1-a/diskTypes/pd-ssd \
	--no-shielded-secure-boot \
	--shielded-vtpm \
	--shielded-integrity-monitoring \
	--reservation-affinity=any


