# framework-res_autobrightness-overlay
Vendor overlay for adjusting adaptive brightness values in framework-res

## Packaging
`aapt package -S res/ -M AndroidManifest.xml -f -v -F framework-res-autobrightness-overlay.apk`

then push the resulting .apk to `/vendor/overlay/` or `/system/vendor/overlay`
