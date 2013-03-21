#!/bin/bash

app_name=$1

# to remove an application
#adb uninstall $app_name

# to remove the application data
# adb shell rm -r /data/data/$app_name

# to install without the need of uninstall before
adb install -r bin/${app_name}.apk

