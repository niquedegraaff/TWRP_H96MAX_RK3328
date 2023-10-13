#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rk3328_box device
$(call inherit-product, device/rockchip/rk3328_box/device.mk)

PRODUCT_DEVICE := rk3328_box
PRODUCT_NAME := omni_rk3328_box
PRODUCT_BRAND := Android
PRODUCT_MODEL := H96 Max RK3318
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip-tv

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3328_box-user 9 PQ2A.190205.003 150240 release-keys"

BUILD_FINGERPRINT := Android/rk3328_box/rk3328_box:9/PQ2A.190205.003/qmx_srv03071502:user/release-keys
