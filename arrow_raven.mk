#
# Copyright (C) 2021 The Arrow Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)

#Build with Gapps
ARROW_GAPPS := true

#Face Unlock
#TARGET_FACE_UNLOCK_SUPPORTED := true

#Broken Libraries
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Extra Google/Pixel features
#TARGET_SUPPORTS_QUICK_TAP := true

include device/google/gs101/arrow_common.mk
include device/google/raviole/device-arrow.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := arrow_raven

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Alvin F. (nivlafx)" \
	TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220705.003.A1 8672226 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ3A.220705.003.A1/8672226:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
