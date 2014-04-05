USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/d1lkt/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := d1lkt

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=d1lkt
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# fake kernel
TARGET_PREBUILT_KERNEL := device/lge/d1lkt/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RECOVERY_FSTAB = device/lge/d1lkt/fstab.d1lkt
RECOVERY_FSTAB_VERSION = 2

# Bluetooth
TARGET_CUSTOM_BLUEDROID := ../../../device/lge/d1lkt/bluetooth/bluetooth.c
