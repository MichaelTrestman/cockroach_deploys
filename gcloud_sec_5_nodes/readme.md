getting to five nodes is ok.

but the load balancer!

in gcp you have to make an instance group and configure it to a load balancer...

yeah it's complicated

i was stuck for a while on the HEALth check (and still am). i think you need that because otherwise the load balancer won't give requests to that node?

for a sec I thought i had it butyou need to allow the health traffic on teh nodes too (sigh)