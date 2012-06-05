#!/bin/sh

# Check the apk signature
#jarsigner -verify -verbose distributions/psymate-mob-v1.5.4_29052012.apk

# Sign the apk
jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore ~/.android/debug.rdam.keystore distributions/psymate-mob-v1.5.4_29052012.apk rdam

# keystore pass: testito
# rdam pass: 1d3md1t0

# The SDK tools create the debug keystore/key with predetermined names/passwords:
# Keystore name: "debug.keystore"
# Keystore password: "android"
# Key alias: "androiddebugkey"
# Key password: "android"
