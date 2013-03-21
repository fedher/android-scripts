#!/bin/sh

app_name=$1
ver=1.5.4
stamp=29052012

# Check the apk signature
#jarsigner -verify -verbose distributions/${app_name}-v${ver}_${stamp}.apk

# Sign the apk
jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore ~/.android/debug.rdam.keystore distributions/${app_name}-v${ver}_${stamp}.apk rdam

# The SDK tools create the debug keystore/key with predetermined names/passwords:
# Keystore name: "debug.keystore"
# Keystore password: "android"
# Key alias: "androiddebugkey"
# Key password: "android"
