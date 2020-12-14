# framework-res.overlay.autobrightness
Vendor overlay for adjusting adaptive brightness values in framework-res

## Packaging
1. `aapt package -M AndroidManifest.xml -S res -F framework-res.overlay.autobrightness.apk.u -I ~/Android/Sdk/platforms/android-28/android.jar -o android.overlay.autobrightness`
1. to create keystore: `keytool -genkey -v -alias overlay ~/keystores/<keystore file name> -keyalg RSA -keysize 2048 -validity 10000`
1. `jarsigner -keystore ~/keystores/<keystorefilename> framework-res.overlay.autobrightness.apk.u <keystore alias>`
1. `zipalign 4 framework-res.overlay.autobrightness.apk.u framework-res.overlay.autobrightness.apk`

then push the resulting `framework-res.overlay.autobrightness.apk` to `/system/vendor/overlay`, chmod it to 0644 then reboot
