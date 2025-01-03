#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit from the device configuration.
$(call inherit-product, device/samsung/q5q/device.mk)

# Inherit from the Lineage configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_q5q
PRODUCT_DEVICE := q5q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-F946B
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="q5qxxx-user 14 UP1A.231005.007 F946BXXS4DXKC release-keys" \
    BuildFingerprint=amsung/q5qxxx/q5q:13/TP1A.220624.014/F946BXXS4DXKC:user/release-keys
