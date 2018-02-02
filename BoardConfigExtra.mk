# Custom BoardConfig for marlin

# Inline kernel building
TARGET_KERNEL_CONFIG := king_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/google/marlin
TARGET_KERNEL_CLANG_COMPILE := true
# Version will be changed to 9.0
TARGET_KERNEL_CLANG_VERSION := 6.0.2
