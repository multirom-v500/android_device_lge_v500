# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# Board
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := AWIFI
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_PREBUILT_KERNEL := device/lge/v500/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 ehci-hcd.park=3 lpj=67677 androidboot.hardware=awifi
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
BOARD_CUSTOM_BOOTIMG_MK := device/lge/v500/mkbootimg.mk
BOARD_CUSTOM_BOOTIMG := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_DEFAULT_BRIGHTNESS := 127
TW_NO_REBOOT_BOOTLOADER := true
RECOVERY_SDCARD_ON_DATA := true

# Bump
TARGET_REQUIRES_BUMP := true

#Still needed by multirom boot menu
DEVICE_RESOLUTION := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

# MultiROM Recovery Version
MR_REC_VERSION := $(shell date -u +%Y%m%d)
BOARD_MKBOOTIMG_ARGS += --board mrom$(MR_REC_VERSION)-00

#MultiROM config. MultiROM also uses parts of TWRP config
MR_DEVICE_SPECIFIC_VERSION := a
MR_CONTINUOUS_FB_UPDATE := true
MR_DEV_BLOCK_BOOTDEVICE := true
MR_NO_KEXEC := enabled
MR_DPI := xhdpi
MR_DPI_FONT := 270
MR_FSTAB := device/lge/v500/multirom/mrom.fstab
MR_INIT_DEVICES := device/lge/v500/multirom/mr_init_devices.c
MR_INPUT_TYPE := type_b
MR_RD_ADDR := 0x82500000
MR_KEXEC_MEM_MIN := 0x85000000
MR_USE_MROM_FSTAB := true
MR_DEVICE_HOOKS := device/lge/v500/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4
TARGET_RECOVERY_IS_MULTIROM := true
