#!/bin/sh

aapt package -M AndroidManifest.xml -S res -F framework-res.overlay.autobrightness.apk.u -I platforms/android-30/android.jar -o android.overlay.autobrightness

apksigner sign --ks keystore.jks framework-res.overlay.autobrightness.apk.u

zipalign 4 framework-res.overlay.autobrightness.apk.u framework-res.overlay.autobrightness.apk
