#!/bin/sh

PACKAGE=

if [ -z "$ADB" ]; then ADB=adb; fi
$ADB shell pm clear $PACKAGE
