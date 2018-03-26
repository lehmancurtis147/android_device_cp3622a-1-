#!/system/bin/sh
# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

#Backup /data/app/mcRegistry/* to /persist/rsu/mcRegistry/*

#if /data/app/mcRegistry/* exist, then backup files to /persist/rsu/mcRegistry/*
if [ -e /data/app/mcRegistry/00000000.authtokcont ]
then
 #backup kph files
 mkdir -p /persist/rsu/mcRegistry
 cp /data/app/mcRegistry/00000000.authtokcont /persist/rsu/mcRegistry/00000000.authtokcont
elif [ -e /data/app/mcRegistry/00000000.authtokcont.backup ]
then
 #backup kph files
 mkdir -p /persist/rsu/mcRegistry
 cp /data/app/mcRegistry/00000000.authtokcont.backup /persist/rsu/mcRegistry/00000000.authtokcont
else
 #if /data/app/mcRegistry/* do not exist, if /persist/rsu/mcRegistry exist, then recovery files.
 if [ -e /persist/rsu/mcRegistry/00000000.authtokcont ]
 then
  #Recovery kph files
  mkdir -p /data/app/mcRegistry
  cp /persist/rsu/mcRegistry/00000000.authtokcont /data/app/mcRegistry/00000000.authtokcont.backup
  chown system.system /data/app/mcRegistry
  chown system.system /data/app/mcRegistry/00000000.authtokcont.backup
 fi
fi
