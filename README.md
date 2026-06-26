# Disable Fingerprint [Magisk Module]

This module is designed to fix high CPU usage by repeatedly trying to contact a non-functional Fingerprint HAL for OnePlus Nord CE 5G [ROM] [16] [UNOFFICIAL GSI build] LineageOS-23 for ebba @xda.

https://xdaforums.com/t/rom-16-unofficial-gsi-build-lineageos-23-for-ebba.4769184/

## What it does:
1. **Masks Permission XMLs**: Replaces `android.hardware.fingerprint.xml` and `android.hardware.biometrics.fingerprint.xml` with empty files in both `/system` and `/vendor`. This tells Android that the device does not have a fingerprint sensor.
2. **Sets System Properties**: Sets `config.disable_fingerprint=true` and `ro.fingerprint.disable=1` to further instruct the framework to ignore fingerprint hardware.
3. **Stops Services**: Attempts to stop common fingerprint HAL services (`android.hardware.biometrics.fingerprint@2.1-service`, `vendor.fps_hal`, etc.) during boot.

## Installation:
1. Zip the contents of this folder (not the folder itself).
2. Install via Magisk Manager.
3. Reboot.
