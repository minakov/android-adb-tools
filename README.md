android-adb-tools
=================

Helpful personal command for adb

Usage: dbquery.sh
-----------------

```
$ dbquery.sh ".tables"

1408 KB/s (176128 bytes in 0.122s)
android_metadata
```

```
$ dbquery.sh "select * from android_metadata"

1387 KB/s (176128 bytes in 0.123s)
locale    
----------
ru_RU     
```

Usage: preferences.sh
---------------------

```
$ preferences.sh

{PACKAGE}_preferences.xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<map>
</map>
```
