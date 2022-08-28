#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/raviole/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := arrow_raven

PRODUCT_GMS_CLIENTID_BASE := android-google

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

TARGET_SUPPORTS_QUICK_TAP := true

#Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

TARGET_INCLUDE_PIXEL_CHARGER := true

#Build with Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_USES_MINI_GAPPS := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=raven \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220624.021 8877034 release-keys"

BUILD_FINGERPRINT := google/raven/raven:13/TP1A.220624.021/8877034:user/release-keys

$(call inherit-product, vendor/google_devices/raven/proprietary/device-vendor.mk)
