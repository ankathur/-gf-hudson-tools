#!/bin/bash
env
export PATH=/gf-hudson-tools/bin:${PATH}
ls ~/.ssh
#cat ~/.ssh/ssh_host_rsa_key.pub >> /scratch/host_ssh/authorized_keys
#rm -rf ${WORKSPACE}/* || true
jps -mv
ls -l ${PARENT_WS_PATH_CONTAINER}/
ls -l ${PARENT_WS_PATH_CONTAINER}/bundles/
scp -i "/root/.ssh/ssh_host_rsa_key" -v -o "StrictHostKeyChecking no" genie.dash@${PARENT_NODE}:${PARENT_WS_PATH_CONTAINER}/bundles/gftest.sh .
bash -ex gftest.sh run_test ${TEST_ID}
