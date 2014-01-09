## Specify phone tech before including full_phone
$(call inherit-product, vendor/du/config/cdma.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/du/config/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := XT907
PRODUCT_NAME := du_xt907

$(call inherit-product, device/motorola/xt907/full_xt907.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT907_verizon \
    BUILD_PRODUCT=scorpion_mini \
    BUILD_FINGERPRINT=motorola/XT907_verizon/scorpion_mini:4.1.2/9.8.1Q-66/28:user/release-keys
