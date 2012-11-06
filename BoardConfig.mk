# inherit from common
-include device/generic/safestrap-common/BoardConfigCommon.mk

# Processor
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_ARCH_VARIANT_CPU := cortex-a9

# TWRP
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 540x960
TW_NO_USB_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_ALWAYS_RMRF := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_INITRC := device/generic/safestrap-common/init/init-motorola-qcom.rc

# Virtual partition size default (in mb)
DEFAULT_VIRT_SYSTEM_SIZE := 1024

# MOTOROLA
BOARD_HAS_LOCKED_BOOTLOADER := true

