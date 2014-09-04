#!/bin/csh

set SLCversion=`grep Scientific /etc/redhat-release | sed 's/.*[rR]elease \([0-9]*\)\..*/\1/'`

if ($SLCversion == "4") then
 source /afs/cern.ch/cms/LCG/LCG-2/UI/cms_ui_env_3_1.csh
endif

if ($SLCversion == "5") then
 #source /afs/cern.ch/cms/LCG/LCG-2/UI/cms_ui_env_3_2.csh
 source /afs/cern.ch/cms/LCG/LCG-2/UI/cms_ui_env_3_2.11-1.csh
endif



if ($SLCversion == "6") then
  setenv GRID_ENV_LOCATION /afs/cern.ch/cms/LCG/LCG-2/UI/DUMMY
  echo "SLC6 detected"
  echo " full gLite UI is not supported yet on lxplus6"
  echo " a dummy GRID_ENV_LOCATON env.var. is defined by this script for use in Crab2"
  echo " Note that voms*, myproxy* and lcg-* commands are in /usr/bin and"
  echo " will work w/o any setup, if you need more, stick to lxplus5 or"
  echo " contact CERN help desk"
endif
