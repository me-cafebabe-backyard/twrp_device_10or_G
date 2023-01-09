#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_RELEASE_NAME := G

# Inherit from G device
$(call inherit-product, device/10or/G/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
BOARD_VENDOR := 10or
PRODUCT_BRAND := 10or
PRODUCT_MODEL := 10or G
PRODUCT_MANUFACTURER := 10or
TARGET_VENDOR := 10or
