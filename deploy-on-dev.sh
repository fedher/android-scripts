#!/bin/bash

# to remove an application
#adb uninstall nl.psymate

# to remove the application data
# adb shell rm -r /data/data/nl.psymate

# to install without the need of uninstall before
adb install -r bin/psymate-mob.apk
