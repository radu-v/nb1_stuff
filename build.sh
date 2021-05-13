#!/bin/sh

aapt package -M AndroidManifest.xml -S res -F framework-res.overlay.power_profile.apk.u -I platforms/android-30/android.jar -o android.overlay.power_profile

apksigner sign --ks keystore.jks framework-res.overlay.power_profile.apk.u

zipalign 4 framework-res.overlay.power_profile.apk.u framework-res.overlay.power_profile.apk
