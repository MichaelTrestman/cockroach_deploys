Step 1: Create instances

tinkered in gcloud console but exported the command and tweaked to make create_instances.sh

Got some warnings though: WARNING: Some requests generated warnings:
 - Disk size: '150 GB' is larger than image size: '10 GB'. You might need to resize the root repartition manually if the operating system does not support automatic resizing. See https://cloud.google.com/compute/docs/disks/add-persistent-disk#resize_pd for details.

but how do I check if i'm actually in the described scenario? manualy check available disk size from inside the box I guess is one way...


this link is wrong: "Configure each GCE instance to use Google's internal NTP service." should point here: https://cloud.google.com/compute/docs/instances/configure-ntp