#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifer: Apache-2.0
#


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common legion stuff.
$(call inherit-product, vendor/nusantara/config/common.mk)

# Inherit from RMX1971 device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)
#$(call inherit-product, packages/apps/NusantaraParts/nadproject.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080
NAD_BUILD_TYPE := OFFICIAL
TARGET_USES_BLUR := true

# Gapps Config
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1971
PRODUCT_NAME := nad_RMX1971
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 5 Pro
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 11 RP1A.201005.006 6828489 release-keys"

BUILD_FINGERPRINT := "google/sunfish/sunfish:11/RP1A.201005.006/6828489:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1971" \
    TARGET_DEVICE="RMX1971"
