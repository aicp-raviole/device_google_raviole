#
# Copyright (C) 2021 The Arrow Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)

include device/google/gs101/arrow_common.mk
include device/google/raviole/device-arrow.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := arrow_oriole

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Alvin F. (nivlafx)" \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 12 SQ3A.220705.003.A1 8672226 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:12/SQ3A.220705.003.A1/8672226:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
