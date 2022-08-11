#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/raviole/device-lineage.mk)

#Gapps
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := dot_raven

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

#PRODUCT_GMS_CLIENTID_BASE := android-raven

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220705.004 8836240 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ3A.220705.004/8836240:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
