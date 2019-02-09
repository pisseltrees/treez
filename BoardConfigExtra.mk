# Custom BoardConfig for marlin

# Inline kernel building
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := lineageos_marlin_defconfig
TARGET_KERNEL_SOURCE := kernel/google/marlin

-include vendor/google/marlin/BoardConfigVendor.mk
