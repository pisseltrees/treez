# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit AOSP product configuration
$(call inherit-product, vendor/havoc/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

include device/google/marlin/marlin/BoardConfig.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := havoc_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 9 PQ2A.190305.002/5240760 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:9/PQ2A.190305.002/5240760:user/release-keys

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext
 PRODUCT_BOOT_JARS += \
    telephony-ext
