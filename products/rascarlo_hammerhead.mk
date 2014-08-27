# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/rascarlo/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := rascarlo_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:4.4.4/KTU84P/1227136:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 4.4.4 KTU84P 1227136 release-key"

# Inherit media effect blobs
-include vendor/rascarlo/products/common_media_effects.mk

# boot animation
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/hammerhead/system/media/bootanimation.zip:system/media/bootanimation.zip

# new adreno drivers
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/firmware/a330_pfp.fw:system/vendor/firmware/a330_pfp.fw \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/firmware/a330_pm4.fw:system/vendor/firmware/a330_pm4.fw \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libplayback_adreno.so:system/vendor/lib/egl/libplayback_adreno.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libCB.so:system/vendor/lib/libCB.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libgsl.so:system/vendor/lib/libgsl.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    vendor/rascarlo/proprietary/hammerhead/system/NewAdrenoDrivers/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so

# fix for green line in videos
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/hammerhead/system/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so

# dalvik patch
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/hammerhead/system/dalvik/system/bin/dalvikvm:system/bin/dalvikvm \
    vendor/rascarlo/proprietary/hammerhead/system/dalvik/system/bin/dexopt:system/bin/dexopt \
    vendor/rascarlo/proprietary/hammerhead/system/dalvik/system/bin/installd:system/bin/installd \
    vendor/rascarlo/proprietary/hammerhead/system/dalvik/system/lib/libcutils.so:system/lib/libcutils.so \
    vendor/rascarlo/proprietary/hammerhead/system/dalvik/system/lib/libdvm.so:system/lib/libdvm.so \
    vendor/rascarlo/proprietary/hammerhead/system/dalvik/system/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so 

# bionic patch
PRODUCT_COPY_FILES += \
    vendor/rascarlo/proprietary/hammerhead/system/bionic/system/lib/libc.so:system/lib/libc.so \
    vendor/rascarlo/proprietary/hammerhead/system/bionic/system/lib/libm.so:system/lib/libm.so
