# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ALLOW_MISSING_DEPENDENCIES := true

# Device Path
DEVICE_PATH := device/tecno/KJ5

# APEX & Build Config
DEXPREOPT_GENERATE_APEX_IMAGE := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Architecture Configuration
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53

# Bootloader and Platform
TARGET_BOOTLOADER_BOARD_NAME := KJ5
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6768
TARGET_USES_UEFI := true

# Kernel & Recovery Configuration
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_SECOND_OFFSET := 0xbff88000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_DTB_OFFSET := 0x0bc08000
BOARD_INCLUDE__DTB_IN_BOOTIMG := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

# AVB Configuration
BOARD_AVB_ENABLE := true
BOARD_AVB_VBMETA_SYSTEM := system product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048

# Metadata, Recovery & Partitions
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_PARTITION_LIST := system vendor product system_ext
BOARD_MAIN_SIZE := 9122611200

# File Systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_SYSTEM_EXTIMAGE := true
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_F2FS := true

# Dynamic Partitions & Recovery
AB_OTA_UPDATER := true
RECOVERY_SDCARD_ON_DATA := true
TW_USE_EXTERNAL_STORAGE := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# TWRP-Specific Settings
OF_DISABLE_TWRP_COMPATIBILITY_MODE := true
TW_HAS_MTP := true
TW_INCLUDE_FASTBOOTD := true
TWRP_INCLUDE_LOGCAT := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_BASH := true
TW_NO_FASTBOOT_BOOT := true
TW_INCLUDE_NTFS_3G := true

# Display & UI
TW_FRAMERATE := 60
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := "300"
TW_CUSTOM_CLOCK_POS := "70"
TW_CUSTOM_BATTERY_POS := "790"
TARGET_SCREEN_DENSITY := 320
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 1200
TW_THEME := portrait_hdpi

# Device Information
TW_DEVICE_VERSION := Made by r3nzph
