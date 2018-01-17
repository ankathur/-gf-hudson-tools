#! /bin/bash
mkdir -p ${WORKSPACE}
if [ $? -eq 0 ]; then
   cd ${WORKSPACE}
else
   echo "Unable to create directory ${WORKSPACE}"
fi
true | which java
java -version | true
shopt -s nocasematch
if [[ ${REDIRECT_STD_ERR} == "true" ]]; then
 /bin/bash -ex ${EXECUTE_SCRIPT} dockertriggered 
else
 /bin/bash -ex ${EXECUTE_SCRIPT} dockertriggered
fi
