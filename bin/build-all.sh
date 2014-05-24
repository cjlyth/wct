#!/usr/bin/env bash

./build.sh mysql-provided && ./build.sh tomcat-provided && ./build.sh wct-provided && ./build.sh wct 
./run.sh wct "${@:-"supervisord -e debug -k"}"
