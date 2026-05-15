#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xpeng device
$(call inherit-product, device/motorola/xpeng/device.mk)

# Inherit some common Alpha stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_xpeng
PRODUCT_DEVICE := xpeng
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g200 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="xpeng_g-user 12 S1RXS32.50-13-25 5fb68-c44485 release-keys" \
    BuildFingerprint=motorola/xpeng_g/xpeng:12/S1RXS32.50-13-25/5fb68-c44485:user/release-keys \
    DeviceProduct=xpeng_retail

#axionos flags
TARGET_ENABLE_BLUR := true

TARGET_INCLUDE_AXFX := true

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 108,8,2
AXION_CAMERA_FRONT_INFO := 16

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := EzerMod   

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon_888+_5G


TARGET_SUPPORTED_REFRESH_RATES := 45,60,75,90,120,144
