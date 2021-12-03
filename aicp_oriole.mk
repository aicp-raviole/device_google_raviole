#
# Copyright (C) 2021 The AICP Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)

include device/google/gs101/aicp_common.mk
include device/google/raviole/device-aicp.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := aicp_oriole

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Alvin F. (nivlafx)" \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 12 SP2A.220305.013.A3 8229987 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:12/SP2A.220305.013.A3/8229987:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
