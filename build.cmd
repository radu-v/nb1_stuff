aapt package -M AndroidManifest.xml -S res -F framework-res.overlay.autobrightness.apk.u -I %android-28-sdk%\android.jar -o android.overlay.autobrightness
"C:\Program Files\Java\jdk1.8.0_181\bin\jarsigner.exe" -keystore .keystore framework-res.overlay.autobrightness.apk.u overlay
zipalign 4 framework-res.overlay.autobrightness.apk.u framework-res.overlay.autobrightness.apk