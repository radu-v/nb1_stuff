# framework-res.overlay.power_profile
Vendor overlay for adjusting adaptive brightness values in framework-res

## Packaging
1. `aapt package -M AndroidManifest.xml -S res -F framework-res.overlay.power_profile.apk.u -I ~/Android/Sdk/platforms/android-28/android.jar -o android.overlay.power_profile`
1. to create keystore: `keytool -genkeypair -v -alias overlay --keystore ~/keystores/<keystore file name> -keyalg RSA -keysize 2048 -validity 10000`
1. `jarsigner -keystore ~/keystores/<keystorefilename> framework-res.overlay.power_profile.apk.u <keystore alias>`
1. `zipalign 4 framework-res.overlay.power_profile.apk.u framework-res.overlay.power_profile.apk`

then push the resulting `framework-res.overlay.power_profile.apk` to `/system/vendor/overlay`, chmod it to 0644 then reboot
