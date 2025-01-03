#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Displayconfig
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/display/display_id_4630947175568309891.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947175568309891.xml \
    $(LOCAL_PATH)/config/display/display_id_4630946481096930692.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946481096930692.xml

# Init
PRODUCT_PACKAGES += \
    init.q5q.rc

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResq5q

# WiFi firmware symlinks
PRODUCT_PACKAGES += \
    firmware_wlanmdsp.otaupdate_symlink \
    firmware_wlan_mac.bin_symlink \
    firmware_WCNSS_qcom_cfg.ini_symlink

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/samsung/sm8550-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/samsung/q5q/q5q-vendor.mk)
