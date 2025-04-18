#
# OrangeFox Recovery Project - Device Setup Script
# Copyright (C) 2021-2022
#

FDEVICE="KJ5"

fox_get_target_device() {
    local chkdev=$(echo "$BASH_SOURCE" | grep -w "$FDEVICE")
    if [ -n "$chkdev" ]; then
        FOX_BUILD_DEVICE="$FDEVICE"
    else
        chkdev=$(set | grep BASH_ARGV | grep -w "$FDEVICE")
        [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
    fi
}

if [ -z "$1" ] && [ -z "$FOX_BUILD_DEVICE" ]; then
    fox_get_target_device
fi

if [ "$1" = "$FDEVICE" ] || [ "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export FOX_VARIANT="A14"
    export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
    export FOX_ENABLE_APP_MANAGER=1
    export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
    export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
    export OF_NO_MIUI_PATCH_WARNING=1
    export OF_USE_GREEN_LED=0
    export FOX_USE_BASH_SHELL=1
    export FOX_ASH_IS_BASH=1
    export FOX_USE_TAR_BINARY=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_XZ_UTILS=1
    export OF_QUICK_BACKUP_LIST="/boot;/super;"
    export FOX_DELETE_AROMAFM=1
    export FOX_BUGGED_AOSP_ARB_WORKAROUND="1616300800"
    export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v28.1.zip
    export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
    export FOX_PATCH_VBMETA_FLAG="1"
    export OF_HIDE_NOTCH=1
    export OF_CLOCK_POS=1
    export OF_UNBIND_SDCARD_F2FS=1
    export OF_VANILLA_BUILD=1
    export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
    export FOX_RECOVERY_BOOT_PARTITION="/dev/block/by-name/boot"
    export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/by-name/vendor"
    export OF_DYNAMIC_FULL_SIZE=9126805504
    export FOX_TARGET_DEVICES="KJ5"

    if [ "$OF_USE_LZ4_COMPRESSION" = "1" ]; then
        export FOX_VARIANT="lz4"
    fi
else
    if [ -z "$FOX_BUILD_DEVICE" ] && [ -z "$BASH_SOURCE" ]; then
        echo "I: This script requires bash. Not processing the $FDEVICE $(basename $0)"
    fi

    if [ -n "$FOX_BUILD_LOG_FILE" ] && [ -f "$FOX_BUILD_LOG_FILE" ]; then
        export | grep -E "FOX|OF_|TARGET_|TW_" >> "$FOX_BUILD_LOG_FILE"
    fi
fi
