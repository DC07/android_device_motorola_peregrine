#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

-include device/motorola/msm8226-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/peregrine/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/peregrine

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/motorola/peregrine/init/init_peregrine.c

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

#TWRP
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := false
#These flags are somewhat deprecated in TWRP 2.5+ but they are still used for a few things.
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TODO: Number needs to be confirmed...
TW_CUSTOM_POWER_BUTTON := 107
PRODUCT_COPY_FILES += device/motorola/peregrine/twrp.fstab:recovery/root/etc/twrp.fstab

# userdata 8GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8589934592
