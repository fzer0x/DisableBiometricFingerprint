#!/system/bin/sh
# Wait for boot to complete
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 1
done

# Force stop any biometric services again just to be sure :)
stop android.hardware.biometrics.fingerprint@2.1-service
stop android.hardware.biometrics.fingerprint@2.1-service.oplus.compat
stop android.hardware.biometrics.fingerprint@2.1-service.oppo.compat
stop vendor.oplus.hardware.biometrics.fingerprint@2.1-service
stop vendor.oplus.hardware.biometrics.fingerprintpay@1.0-service
stop vendor.fps_hal
stop fingerprintd

# extra props for some devices
settings put system fingerprint_unlock_allowed 0
settings put secure fingerprint_unlock_allowed 0
