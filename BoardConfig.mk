USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/t03g/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := smdk4x12

# Platform
TARGET_BOARD_PLATFORM := exynos4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
EXYNOS4X12_ENHANCEMENTS := true
EXYNOS4_ENHANCEMENTS := true

ifdef EXYNOS4X12_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DEXYNOS4_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DEXYNOS4X12_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
endif

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_SOC := exynos4x12
TARGET_HAL_PATH := hardware/samsung/exynos4/hal
TARGET_ARCH := arm

BOARD_KERNEL_CMDLINE :=  console=ttyHSL0,115200,n8 androidboot.hardware=jet
BOARD_KERNEL_BASE :=  0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000

BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9437184
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12381585408
BOARD_FLASH_BLOCK_SIZE := 4096

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/t03g/kernAl
BOARD_NEEDS_LZMA_MINIGZIP := true
#TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
#TARGET_KERNEL_CONFIG := cyanogenmod_n7100_defconfig
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/t03g/custombootimg.mk

# Recovery:Start
# Recovery: set depending on recovery being built for. (CWM or TWRP)
#           both init scripts can be found in the recovery folder
#TARGET_RECOVERY_INITRC := device/samsung/t03g/recovery/init.rc

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/t03g/multirom/twrp.fstab
RECOVERY_VARIANT := twrp
RECOVERY_FSTAB_VERSION := 2
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP specific build flags
#BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_15x24.h\"
#DEVICE_RESOLUTION := 768x1280
#TWRP_NEW_THEME := true
#TW_THEME := portrait_hdpi
TW_CUSTOM_THEME := bootable/recovery/gui/themes_multirom/1080x1920
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TW_NO_USB_STORAGE := true
#TWRP_EVENT_LOGGING := true
#SP1_NAME := "efs"
#SP1_BACKUP_METHOD := files
#SP1_MOUNTABLE := 1
#SP2_NAME := "modem"
#SP2_BACKUP_METHOD := image
#SP2_MOUNTABLE := 0
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file
#TW_INCLUDE_JB_CRYPTO := true
#TW_INCLUDE_CRYPTO_SAMSUNG := true
#TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p16"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,discard,noauto_da_alloc,journal_async_commit,errors=panic wait,check,encryptable=footer"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
#TW_BRIGHTNESS_PATH := "/brightness"
TW_BRIGHTNESS_PATH := "/sys/devices/platform/s5p-dsim.0/s6evr02/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
#TW_INCLUDE_FB2PNG := true
TW_NO_EXFAT_FUSE := true
TW_NO_EXFAT := true
TW_EXCLUDE_SUPERSU := true
TW_NO_SCREEN_BLANK := true
#TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565" \\use this for building twrp recovery
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888" \\use this for building multirom bootmanager
#TW_INCLUDE_DUMLOCK := false
#TW_EXCLUDE_ENCRYPTED_BACKUPS := false
TW_HAS_DOWNLOAD_MODE := true
TW_NO_CPU_TEMP := true
#TW_NO_REBOOT_BOOTLOADER := true
TW_INCLUDE_NTFS_3G := true

#BOARD_HAS_NO_MISC_PARTITION := true
#BOARD_SUPPRESS_EMMC_WIPE := true

# MultiROM config. MultiROM also uses parts of TWRP config
TARGET_RECOVERY_IS_MULTIROM := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/t03g/multirom/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_FONT := 216
MR_DPI_MUL := 1
MR_FSTAB := device/samsung/t03g/multirom/twrp.fstab
MR_KEXEC_MEM_MIN := 0x45000000
#MR_KEXEC_MEM_MIN := 0xA1000000
MR_USE_MROM_FSTAB := true
MR_INFOS := device/samsung/t03g/mrom_infos
MR_DEVICE_HOOKS := device/samsung/t03g/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 3
MR_PIXEL_FORMAT := "RGBX_8888"
#MR_ALLOW_NKK71_NOKEXEC_WORKAROUND := true
#MR_THEME := 768x1280

include device/common/version-info/MR_REC_VERSION.mk

ifeq ($(MR_REC_VERSION),)
MR_REC_VERSION := $(shell date -u +%Y%m%d)-01
endif

BOARD_MKBOOTIMG_ARGS += --board mrom$(MR_REC_VERSION)

MR_NO_KEXEC := enabled
# possible options:
#       1 true allowed      # NO_KEXEC_DISABLED =  0x00,   // no-kexec is disabled (ie it is built, but needs to be manually enabled)
#       2 enabled           # NO_KEXEC_ALLOWED  =  0x01,   // "Use no-kexec only when needed"
#       3 ui_confirm        # NO_KEXEC_CONFIRM  =  0x02,   // "..... but also ask for confirmation"
#       4 ui_choice         # NO_KEXEC_CHOICE   =  0x04,   // "Ask whether to kexec or use no-kexec"
#       5 forced            # NO_KEXEC_FORCED   =  0x08,   // "Always force using no-kexec workaround"
# any other setting won't build it at all
