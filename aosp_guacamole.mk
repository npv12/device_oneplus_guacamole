#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7 Pro
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

# FOD
TARGET_HAS_FOD := true

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Launcher choice
export TARGET_LAUNCHER_CHOICE := oplauncher

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_WIFI_EXT := true

#Pixel Live Wallpaper
TARGET_PIXEL_LWP := true

# FOD
TARGET_HAS_FOD := true

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:10/QKQ1.190716.003/2009281532:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7Pro \
    PRODUCT_NAME=OnePlus7Pro \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 10 QKQ1.190716.003 2009281532 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
