#
# Copyright (C) 2021 The AICP Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
RELAX_USES_LIBRARY_CHECK := true

DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += vendor/aicp/config/device_framework_matrix.xml
