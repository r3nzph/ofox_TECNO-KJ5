# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from KJ5 device
$(call inherit-product, device/tecno/KJ5/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := KJ5
PRODUCT_NAME := twrp_KJ5
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KJ5
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion
