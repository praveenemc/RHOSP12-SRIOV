#!/bin/bash

openstack overcloud deploy \
--templates \
-e /home/stack/templates/node-info.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/neutron-sriov.yaml \
-e /home/stack/templates/overcloud_images.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-ansible.yaml \
-e /home/stack/templates/network-environment.yaml \
-e /home/stack/templates/firstboot-environment.yaml \
--timeout 145 \
--ntp-server 10.118.135.19 \
--log-file overcloud_install.log &> overcloud_install.log
