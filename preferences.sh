#!/bin/sh
if [ -z "$ADB" ]; then ADB=adb; fi

PACKAGE=

for name in `$ADB -d shell "run-as $PACKAGE ls /data/data/${PACKAGE}/shared_prefs"`
do
  pref=`echo "$name" | sed 's/[ \n\t\r]//g'`
  echo ${pref}
  $ADB -d shell "run-as $PACKAGE cat /data/data/${PACKAGE}/shared_prefs/${pref} > /sdcard/${pref}"
  $ADB -d shell "cat /sdcard/${pref}" | xmllint --format -
  $ADB -d shell "rm /sdcard/${pref}"
done
