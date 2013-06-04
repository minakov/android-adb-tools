#!/bin/sh

PACKAGE=

if [ -z "$ADB" ]; then ADB=adb; fi
$ADB uninstall $PACKAGE
