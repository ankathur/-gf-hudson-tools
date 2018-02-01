#!/bin/bash
env
export PATH=/gf-hudson-tools/bin:${PATH}
ls -l /etc/ssh/
ls -l /etc/ssh/ssh_host_rsa_key
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod og-wx ~/.ssh/authorized_keys 

#rm -rf ${WORKSPACE}/* || true
jps -mv
ls -l ${PARENT_WS_PATH_CONTAINER}/
ls -l ${PARENT_WS_PATH_CONTAINER}/bundles/
scp -vvv -o "StrictHostKeyChecking no" ${PARENT_NODE}:${PARENT_WS_PATH_CONTAINER}/bundles/gftest.sh .
bash -ex gftest.sh run_test ${TEST_ID}
