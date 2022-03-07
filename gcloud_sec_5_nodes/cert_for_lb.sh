#!/bin/bash

source ./safe-dir/node_names_and_addys.sh

cockroach cert create-node \
$node1name \
$node1addr \
$node2name \
$node2addr \
$node3name \
$node3addr \
$node4name \
$node4addr \
$node5name \
$node5addr \
localhost \
$ex_ip \
--certs-dir=certs/ \
--ca-key=safe-dir/ca.key