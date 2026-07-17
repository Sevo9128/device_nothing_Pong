#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := Nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.250415.001/2604141749:user/release-keys \
    DeviceName=Pong \
    DeviceProduct=Pong \
    SystemDevice=Pong \
    SystemName=Pong

# Inherit common Axion stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion properties
TARGET_INCLUDE_AXFX := true
TARGET_INCLUDES_LOS_PREBUILTS := true

AXION_CAMERA_REAR_INFO := 50,50
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := Anonymous
AXION_PROCESSOR := Snapdragon_8+_Gen_1

# Axion firmware configuration
HBM_SUPPORTED := true
HBM_NODE := /sys/devices/platform/soc/soc:qcom,dsi-display-primary/hbm

TARGET_NEEDS_DOZE_FIX := false
TARGET_DOZE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := false
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED := false

TARGET_DISABLES_LIBPERF := false

# GMS configuration
TARGET_INCLUDE_GOOGLE_TELECOMM := false
TARGET_INCLUDE_PARTNER_SETUP := false
