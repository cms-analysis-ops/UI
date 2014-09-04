#!/bin/sh

SLCversion=`grep Scientific /etc/redhat-release | sed 's/.*[rR]elease \([0-9]*\)\..*/\1/'`

if [ $SLCversion = 4 ]
then
 source /afs/cern.ch/cms/LCG/LCG-2/UI/cms_ui_env_3_1.sh
fi

if [ $SLCversion = 5 ]
then
  source /afs/cern.ch/cms/LCG/LCG-2/UI/cms_ui_env_3_2.11-1.sh
fi


if [ $SLCversion = 6 ]
then
  export GRID_ENV_LOCATION=/afs/cern.ch/cms/LCG/LCG-2/UI/DUMMY
  echo "SLC6 detected"
  echo " this script defined a dummy \$GRID_ENV_LOCATION so that"
  echo " CRAB2 with scheduler=remoteglidein will work on lxplus6, where"
  echo " needed commands, i.e. voms*, myproxy* and lcg-*, are in /usr/bin."
  echo "If you need full gLite UI functionalities , stick to lxplus5 or"
  echo " contact CERN help desk"
fi

