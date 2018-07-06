# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := KIRIN
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := generic
TARGET_BOARD_PLATFORM_GPU := kirin

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

BOARD_KERNEL_CMDLINE := 

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x8000 --ramdisk_offset 0x01000000 --tags_offset 0x0100

# phony empty kernel to satisfy build system, but this device does not
# include a kernel in the recovery image -- flash to recovery_ramdisk
BOARD_KERNEL_IMAGE_NAME := Kernel
TARGET_PREBUILT_KERNEL := device/huawei/charlotte/dummykernel
# else uncomment below to build from sauce
# TARGET_KERNEL_SOURCE := kernel/huawei/charlotte
# TARGET_KERNEL_CONFIG := charlotte_defconfig

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/public

# NOTE I only bother properly setting recovery image size
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1493696512
BOARD_USERDATAIMAGE_PARTITION_SIZE := 30266449920
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP specific build flags
RECOVERY_VARIANT := twrp
DEVICE_RESOLUTION := 1080x1920
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_NO_SCREEN_BLANK := true
TW_DEFAULT_BRIGHTNESS := "2048"
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
# Device crashes if /sbin/modprobe is present so this is needed:
BOARD_CUSTOM_BOOTIMG_MK := device/huawei/charlotte/custombootimg.mk
# MTP will not work until we update it to support ffs
TW_EXCLUDE_MTP := true