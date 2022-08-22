#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/raviole/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := arrow_raven

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

#Build with Gapps
ARROW_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220624.021 8877034 release-keys"

BUILD_FINGERPRINT := google/raven/raven:13/TP1A.220624.021/8877034:user/release-keys

$(call inherit-product, vendor/google_devices/raven/proprietary/device-vendor.mk)
