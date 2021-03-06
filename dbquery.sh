#!/bin/sh

PACKAGE=
DATABASE=

if [ $# -ne 1 ]
 then
  echo Usage: $(basename "$0") sql
  exit 1
fi;

if [ -z "$ADB" ]; then ADB=adb; fi
if [ -z "$ANDROID_HOME" ]; then ANDROID_HOME=$HOME/android-sdk-linux_86; fi
$ADB -d shell "run-as $PACKAGE cat /data/data/$PACKAGE/databases/$DATABASE > /sdcard/${PACKAGE}_${DATABASE}"
$ADB pull "/sdcard/${PACKAGE}_${DATABASE}" $HOME/"${PACKAGE}_${DATABASE}"
$ADB -d shell "rm /sdcard/${PACKAGE}_${DATABASE}"
$ANDROID_HOME/tools/sqlite3 -header -column $HOME/${PACKAGE}_${DATABASE} "$1"
rm $HOME/"${PACKAGE}_${DATABASE}"
