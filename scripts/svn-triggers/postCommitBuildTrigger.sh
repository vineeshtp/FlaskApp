#!/bin/bash

# the base url of the bamboo server
#baseurl="$1/updateAndBuild.action?buildKey="
baseurl="http://172.28.80.1:8085/rest/api/latest/repository/scan?repositoryId=3211265"

#
# Use the REST API to trigger a build
#

# Moves to the 2nd param (first is URL)
shift
# Loop for each build key
while (( "$#" )); do

   #
   # Invoke the trigger
   #
   remoteCall=$baseurl$1
   echo "Detected last directory that was committed ... triggering $remoteCall"
   C:\Program Files\Git\usr\share\vim\vim74\syntax\wget --timeout=10 -t1 $remoteCall -O /dev/null
   shift
done

exit 0
