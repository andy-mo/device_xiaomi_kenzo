# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Orion stuff.
$(call inherit-product, vendor/orion/config/common_full_phone.mk)

# Inherit from kenzo device
$(call inherit-product, device/xiaomi/kenzo/device.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := kenzo
PRODUCT_NAME := orion_kenzo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 3
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/kenzo/kenzo:6.0.1/MMB29M/6.4.20:user/release-keys \
    PRIVATE_BUILD_DESC="kenzo-user 6.0.1 MMB29M 6.4.20 release-keys"
endif
