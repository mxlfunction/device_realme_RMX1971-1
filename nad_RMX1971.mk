#
# Copyright (C) 2019 The HavocOS Project
#
# SPDX-License-Identifer: Apache-2.0
#


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

<<<<<<< HEAD:havoc_RMX1971.mk
TARGET_SUPPORTS_GOOGLE_RECORDER := true
=======
# Inherit some common Potato stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
>>>>>>> 6a146cc... bringup nad official:nad_RMX1971.mk

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit from RMX1971 device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, packages/apps/NusantaraParts/nadproject.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080
NAD_BUILD_TYPE := OFFICIAL

# Gapps Config
TARGET_GAPPS_ARCH := arm64
#WITH_GAPPS := true
#IS_PHONE := true

#Official-ify
CUSTOM_BUILD_TYPE := Realme

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1971
<<<<<<< HEAD:havoc_RMX1971.mk
PRODUCT_NAME := havoc_RMX1971
=======
PRODUCT_NAME := nad_RMX1971
>>>>>>> 6a146cc... bringup nad official:nad_RMX1971.mk
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 5 Pro
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 11 RP1A.200720.009 6720564 release-keys"

BUILD_FINGERPRINT :="google/coral/coral:11/RP1A.200720.009/6720564:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1971" \
    TARGET_DEVICE="RMX1971"
