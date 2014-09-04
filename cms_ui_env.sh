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
  echo " cms_ui_env.sh was called, but does nothing on SLC6"
  echo " if you sourced this script in order to use CRAB2 on lxplus6, don't do it"
  echo " as of CRAB_2_10_7, crab2 works on lxplus6 w/o any UI setup"
fi

