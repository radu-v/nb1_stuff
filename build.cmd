aapt package -M AndroidManifest.xml -S res -F framework-res.overlay.apk.u -I platforms\android-30\android.jar -o com.android.frameworkres.overlay
apksigner sign --ks keystore.jks framework-res.overlay.apk.u
zipalign 4 framework-res.overlay.apk.u framework-res.overlay.apk