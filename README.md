# framework-res.overlay.autobrightness
Vendor overlay for adjusting adaptive brightness values in framework-res

## Packaging
1. `aapt package -M AndroidManifest.xml -S res -F framework-res.overlay.autobrightness.apk.u -I ~/Android/Sdk/platforms/android-28/android.jar`
1. to create keystore: `keytool -genkey -alias overlay -keystore ~/keystores/<keystore file name>`
1. `jarsigner -keystore ~/keystores/<keystorefilename> framework-res.overlay.autobrightness.apk.u <keystore alias>`
1. `zipalign 4 framework-res.overlay.autobrightness.apk.u framework-res.overlay.autobrightness.apk`

then push the resulting `framework-res.overlay.autobrightness.apk` to `/system/vendor/overlay`
