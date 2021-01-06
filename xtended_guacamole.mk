#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit Pixel apn
$(call inherit-product, vendor/xtended/telephony/telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common MSM-Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

# Maintainer
XTENDED_MAINTAINER := TheDaemon

# Build Type
XTENDED_BUILD_TYPE := OFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xtended_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7 Pro
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Build info
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7Pro \
    PRODUCT_NAME=OnePlus7Pro \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 10 QKQ1.190716.003 2011052232 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
