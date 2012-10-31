# Copyright (C) 2012 The Android Open Source Project

DEVICE_FOLDER := device/generic/safestrap
COMMON_FOLDER := device/generic/safestrap-common

# Only uncomment for testing on 1stgen KFire
USE_KFIRE_TEST := true

PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/default.prop:$(TARGET_RECOVERY_OUT)/root/default.prop \

# Device specific recovery files
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/sbin/changeslot.sh:$(TARGET_RECOVERY_OUT)/root/sbin/changeslot.sh \
    $(DEVICE_FOLDER)/sbin/build-fs.sh:$(TARGET_RECOVERY_OUT)/root/sbin/build-fs.sh \
    $(DEVICE_FOLDER)/sbin/fixboot.sh:$(TARGET_RECOVERY_OUT)/root/sbin/fixboot.sh \

# Device specific 2nd-init files
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/sbin/fixboot.sh:$(TARGET_RECOVERY_OUT)/root/../2nd-init-files/fixboot.sh \
    $(DEVICE_FOLDER)/sbin/hijack.killall:$(TARGET_RECOVERY_OUT)/root/../2nd-init-files/hijack.killall \

ifdef USE_KFIRE_TEST
# Safestrapmenu
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/res_1024x600/background-blank.png:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/background-blank.png \
    $(DEVICE_FOLDER)/res_1024x600/background-nonsafe.png:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/background-nonsafe.png \
    $(DEVICE_FOLDER)/res_1024x600/background-safe.png:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/background-safe.png \
    $(DEVICE_FOLDER)/res_1024x600/splashkeys.ilitek_i2c:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/splashkeys.ilitek_i2c \

# 2nd-init stock rootfs files [1st gen KFire for testing]
#PRODUCT_COPY_FILES += \
#    $(DEVICE_FOLDER)/root/init.omap4430.rc-1stgen:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/rootfs/init.omap4430.rc \
#    $(DEVICE_FOLDER)/root/init.rc-1stgen:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/rootfs/init.rc

# App files
PRODUCT_COPY_FILES += \
    $(COMMON_FOLDER)/app/omap4-amazon-start_smc/recovery-check.sh:$(TARGET_RECOVERY_OUT)/root/../APP/recovery-check.sh \
    $(COMMON_FOLDER)/app/omap4-amazon-start_smc/recovery-install.sh-otter:$(TARGET_RECOVERY_OUT)/root/../APP/recovery-install.sh \
    $(COMMON_FOLDER)/app/omap4-amazon-start_smc/recovery-uninstall.sh:$(TARGET_RECOVERY_OUT)/root/../APP/recovery-uninstall.sh
else
# Safestrapmenu
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/res_1280x800/background-blank.png:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/background-blank.png \
    $(DEVICE_FOLDER)/res_1280x800/background-nonsafe.png:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/background-nonsafe.png \
    $(DEVICE_FOLDER)/res_1280x800/background-safe.png:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/background-safe.png \
    $(DEVICE_FOLDER)/res_1280x800/splashkeys.AtmelTouch:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/res/splashkeys.AtmelTouch \

# 2nd-init stock rootfs files [KFire-HD7 files]
#PRODUCT_COPY_FILES += \
#    $(DEVICE_FOLDER)/root/init.bowser.rc-kfhd:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/rootfs/init.bowser.rc \
#    $(DEVICE_FOLDER)/root/init.rc-kfhd:$(TARGET_RECOVERY_OUT)/root/../install-files/etc/safestrap/rootfs/init.rc

# App files
PRODUCT_COPY_FILES += \
    $(COMMON_FOLDER)/app/omap4-amazon-start_smc/recovery-check.sh:$(TARGET_RECOVERY_OUT)/root/../APP/recovery-check.sh \
    $(COMMON_FOLDER)/app/omap4-amazon-start_smc/recovery-install.sh-bowser:$(TARGET_RECOVERY_OUT)/root/../APP/recovery-install.sh \
    $(COMMON_FOLDER)/app/omap4-amazon-start_smc/recovery-uninstall.sh:$(TARGET_RECOVERY_OUT)/root/../APP/recovery-uninstall.sh
endif


# Choose a Common Hijack
PRODUCT_COPY_FILES += \
    $(COMMON_FOLDER)/hijacks/start_smc.sh-kfire:$(TARGET_RECOVERY_OUT)/root/../install-files/bin/start_smc.sh \

$(call inherit-product, $(COMMON_FOLDER)/common.mk)

