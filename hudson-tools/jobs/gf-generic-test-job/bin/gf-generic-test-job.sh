#!/bin/bash
env
export PATH=/gf-hudson-tools/bin:${PATH}

#rm -rf ${WORKSPACE}/* || true
jps -mv
ls -l ${PARENT_WS_PATH_CONTAINER}/
ls -l ${PARENT_WS_PATH_CONTAINER}/bundles/
scp -o "StrictHostKeyChecking no" ${PARENT_NODE}:${PARENT_WS_PATH_CONTAINER}/bundles/gftest.sh .
bash -ex gftest.sh run_test ${TEST_ID}
