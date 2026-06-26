#!/system/bin/sh
# Script runs in post-fs-data mode

# 1. Disable PHH-specific Fingerprint
setprop persist.sys.phh.fingerprint.disable 1

# 2. Mask fingerprint services in init
stop android.hardware.biometrics.fingerprint@2.1-service
stop android.hardware.biometrics.fingerprint@2.1-service.oplus.compat
stop android.hardware.biometrics.fingerprint@2.1-service.oppo.compat
stop vendor.oplus.hardware.biometrics.fingerprint@2.1-service
stop vendor.oplus.hardware.biometrics.fingerprintpay@1.0-service
stop vendor.fps_hal
stop fingerprintd
stop vendor.fingerprint-hal-2-1

# Disable HAL by setting its status to disabled if possible
setprop init.svc.android.hardware.biometrics.fingerprint@2.1-service stopped
setprop init.svc.vendor.fps_hal stopped
setprop init.svc.vendor.oplus.hardware.biometrics.fingerprint@2.1-service stopped
