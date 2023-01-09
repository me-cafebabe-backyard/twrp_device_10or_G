#
# Copyright (C) 2022 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common mithorium-common
include device/xiaomi/mithorium-common/BoardConfigCommon.mk

DEVICE_PATH := device/10or/G

# Kernel
TARGET_PREBUILT_KERNEL := device/10or/kernel-G/Image.gz-dtb

# Partitions
BOARD_USES_METADATA_PARTITION := true

# Partitions - dynamic
BOARD_SUPER_PARTITION_BLOCK_DEVICES := oem system
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_OEM_DEVICE_SIZE := 268435456
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 4508876800
BOARD_SUPER_PARTITION_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_OEM_DEVICE_SIZE) + $(BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE) )

BOARD_SUPER_PARTITION_GROUPS := 10or_g_dynpart
BOARD_10OR_G_DYNPART_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_SIZE) - 4194304 )
BOARD_10OR_G_DYNPART_PARTITION_LIST := system system_ext product vendor odm

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)
