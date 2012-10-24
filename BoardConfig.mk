# Processor
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
#BOARD_KERNEL_CMDLINE := mem=512M console=ttyO2,115200n8
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := omap4
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := pasteur

# Build init which doesn't remount /dev, /proc and /sys for 2nd-init
BOARD_HAS_LOCKED_BOOTLOADER := true

# Recovery
TARGET_PREBUILT_KERNEL := device/generic/recovery/kernel
BOARD_ALWAYS_INSECURE := true
BOARD_HAS_LARGE_FILESYSTEM := true

# This needs to be a build.prop
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# TWRP
TARGET_RECOVERY_INITRC := device/generic/recovery/root/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
DEVICE_RESOLUTION := 1280x800
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_FLASH_FROM_STORAGE := true
TW_CUSTOM_POWER_BUTTON := 107
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_PROVIDES_INIT_RC := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_USE_CUSTOM_BATTERY_CAPACITY_PATH := "/sys/class/power_supply/battery/charge_counter"

# Debugging
#TWRP_EVENT_LOGGING := true
